ZSH=$HOME/.oh-my-zsh
ZSH_THEME="miloshadzic"

#------------------------------------------------------------------------------
# plugins
# zsh-syntax-highlighting https://github.com/zsh-users/zsh-syntax-highlighting
#------------------------------------------------------------------------------
plugins=(git gem rails bower npm nyan osx zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# z https://github.com/rupa/z
. `brew --prefix`/Cellar/z/1.8/etc/profile.d/z.sh

# 自動補完設定
#autoload predict-on
#predict-on

#------------------------------------------------------------------------------
# git cloneからWebStromで開く
#------------------------------------------------------------------------------
function clone_w(){
reponame="$(echo $1 | grep / | cut -d/ -f5 | cut -d\. -f1)"
git clone $1&& wstorm $reponame
}

#------------------------------------------------------------------------------
# git cloneからRubyMineで開く
#------------------------------------------------------------------------------
function clone_r(){
reponame="$(echo $1 | grep / | cut -d/ -f5 | cut -d\. -f1)"
git clone $1&& mine $reponame
}


# aliases
for file in ~/.{zshrc-local,aliases}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

#------------------------------------------------------------------------------
# Visual Studio Code
#------------------------------------------------------------------------------
code () {
  if [[ $# = 0 ]]
  then
    open -a "Visual Studio Code"
  else
    [[ $1 = /* ]] && F="$1" || F="$PWD/${1#./}"
    open -a "Visual Studio Code" --args "$F"
  fi
}

#------------------------------------------------------------------------------
# nvm
#-----------------------------------------------------------------------------
source ~/.nvm/nvm.sh
nvm use stable

#------------------------------------------------------------------------------
# powerline
#-----------------------------------------------------------------------------
export PATH=$PATH:~/Library/Python/2.7/bin
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
POWERLINE_NO_SHELL_ABOVE=1
. ~/Library/Python/2.7/lib/python/site-packages/powerline/bindings/zsh/powerline.zsh


#------------------------------------------------------------------------------
# rvm
#-----------------------------------------------------------------------------
#alias rvm='rvm use'
#alias r193='rvm use 1.9.3@rails32'
#alias r200='rvm use 2.0.0@rails4'

# path gradle
export GRADLE_HOME=/project/gradle-1.7
export PATH="$GRADLE_HOME/bin:$PATH"

# java home
#export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home
#export JAVA_HOME=$(/usr/libexec/java_home -v 1.6)
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export PATH=$PATH:$JAVA_HOME/bin

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"


# Customize to your needs...
export PATH=/opt/local/bin:/opt/local/sbin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/local/git/bin:usr/local/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/include:$PATH
# npm
export PATH=$HOME/.node/bin:$PATH

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

## rbenv setting
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# MySQL Path Setting
export PATH=$PATH:/usr/local/mysql/bin

#grunt task autocomplete
eval "$(grunt --completion=zsh)"

#重複したpathを一意にする
typeset -U path cdpath fpath manpath

export LANG=ja_JP.UTF-8

date
