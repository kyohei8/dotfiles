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

#brewインストール
brew bundle
#Finderを一旦落とす(quicklookを反映するため)
defaults write com.apple.finder QLEnableTextSelection -bool true && killall Finder
# java home
JAVA_HOME=$(/usr/libexec/java_home -v 1.6)

#isntall oh-my-zsh
curl -L http://install.ohmyz.sh | sh
