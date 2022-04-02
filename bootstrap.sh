#!/bin/zsh
# install z
git clone git@github.com:rupa/z.git
# install prezto
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

# import prezto filse
# 以下のようにシンボリックリンクを貼る
# ~/.zlogin -> /Users/tsukudakyouhei/dotfiles/prezto/zlogin
# ~/.zlogout -> /Users/tsukudakyouhei/dotfiles/prezto/zlogout
# ~/.zpreztorc -> /Users/tsukudakyouhei/dotfiles/prezto/zpreztorc
# ~/.zprofile -> /Users/tsukudakyouhei/dotfiles/prezto/zprofile
# ~/.zshenv -> /Users/tsukudakyouhei/dotfiles/prezto/zshenv
# ~/.zshrc -> /Users/tsukudakyouhei/dotfiles/prezto/zshrc
setopt EXTENDED_GLOB
for rcfile in `pwd`/prezto/*(.N); do
  ln -s "$rcfile" "$HOME/.${rcfile:t}"
done

# vim
ln -s `pwd`/'.vimrc' $HOME/'.vimrc'
echo 'create symbolic link -> .vimrc'
ln -s `pwd`/'.gvimrc' $HOME/'.gvimrc'
echo 'create symbolic link -> .gvimrc'

# alias
ln -s `pwd`/'aliases' $HOME/'.aliases'
echo 'create symbolic link -> .aliases'

# add "global gitignore" alias
ln -s `pwd`/'_gitignore' $HOME/'.gitignore'
echo 'create symbolic link -> .gitignore(global gitignore)'
