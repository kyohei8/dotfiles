#!/bin/sh

#シンボル化しないファイル・ディレクトリを記述
_IGNORE_DOT_FILE=(./ ../ .DS_Store .gitignore .git/)

# 不要なファイルかどうか
is_ignore(){
  for ignore in ${_IGNORE_DOT_FILE[@]}; do
    if [ $ignore == $1 ]; then
      return 0
    fi
  done
  return 1
}

# dotfileのシンボリックリンクを貼る
for dotfile in `ls -aF | grep '^\.'`; do
  is_ignore $dotfile
  if [ $? -eq 1 ]; then
    src_path=`pwd`/$dotfile
    # ディレクトリの場合最後のスラッシュを削除
    ln -s $src_path $HOME/`echo $dotfile | sed -e 's/\/$//'`
    echo 'create symbolic link ->'$dotfile
  fi
done

# add "global gitignore" alias
ln -s `pwd`/'_gitignore' $HOME/'.gitignore'
echo 'create symbolic link -> .gitignore'
#install brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
#brewインストール
brew bundle
#Finderを一旦落とす(quicklookを反映するため)
defaults write com.apple.finder QLEnableTextSelection -bool true && killall Finder
# java home
JAVA_HOME=$(/usr/libexec/java_home -v 1.6)

# install python & pip
brew install python
# pythonの設定
echo '[install]\nprefix=' > ~/.pydistutils.cfg

# install powerline
pip install --user powerline-status

#isntall oh-my-zsh
curl -L http://install.ohmyz.sh | sh

#install npm
mkdir ~/.node
brew postinstall node

#install node packages
npm i grunt coffee-script gulp bower yo -g

#change screenshot default filename
# via http://apple.stackexchange.com/questions/53422/save-screenshot-with-my-own-name
defaults write com.apple.screencapture name "Screenshot"
f=/System/Library/CoreServices/SystemUIServer.app/Contents/Resources/English.lproj/ScreenCapture.strings
f2=~/Desktop/ScreenCapture.strings
sudo cp $f $f2
sudo chown $USER $f2
plutil -convert xml1 $f2
sed "s/<string>%@ %@ at %@<\/string>/<string>%@ %@%@<\/string>/" $f2 > $f2
sed "s/<string>.<\/string>/<string>-<\/string>/" $f2 > $f2
sudo chown root $f2
sudo cp $f2 $f
killall SystemUIServer

