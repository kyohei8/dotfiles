ZSH=$HOME/.oh-my-zsh
ZSH_THEME="miloshadzic"

plugins=(git gem rails4)

source $ZSH/oh-my-zsh.sh

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


# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#------------------------------------------------------------------------------
# Applications
#------------------------------------------------------------------------------
alias cot='open -g -a CotEditor'

#------------------------------------------------------------------------------
# git
#------------------------------------------------------------------------------
alias gs="git status -s"
alias gft="git fetch"
alias gupdate="git fetch && git merge origin/master"
alias gdi='gd --ignore-space-change'
alias gpom="git push origin master"
alias garc='git archive --format=zip HEAD '
alias gronce="git reset --soft HEAD~1"
alias gphm='git push heroku master'

# git log
alias glap="git log --abbrev-commit --pretty=oneline"
alias glog='git log --all --graph --pretty="tformat:%C(yellow)%h%Cblue%d%Creset %s %C(red) %an, %ar%Creset"'
alias glogp="glog -p"

#------------------------------------------------------------------------------
# other
#------------------------------------------------------------------------------
alias c="clear"
alias sz="source ~/.zshrc"
alias mz="m ~/.zshrc"
alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
alias mvim='open -a  /Applications/MacVim.app'
alias m='mvim'

alias l="ls -lah"
alias s="l"

alias md='mkdir $1'
alias ..='cd ..'

alias rm="rm -i"
alias mv="mv -i"

# grunt
alias gt='grunt $1'

# SL!!!
alias sll='/usr/local/bin/sl'


# ファイルのみを表示
alias llf="ll -aF | grep -v /"
# ディレクトリのみを表示
alias lld="ll -aF | grep /"

# sudo の後のコマンドでエイリアスを有効にする
alias sudo='sudo '
 
# グローバルエイリアス
alias -g L='| less'
alias -g G='| grep'

#------------------------------------------------------------------------------
# heroku 
#------------------------------------------------------------------------------
alias h='heroku'
alias hps='heroku ps'
alias hl='heroku logs'
alias hr='heroku restart'
alias hc='heroku config'
alias hm='heroku maintenance '
alias hsql='heroku pg:psql'
alias hpgi='heroku pg:info'

#------------------------------------------------------------------------------
# bower
#------------------------------------------------------------------------------
alias bw='bower'
alias bwi='bower install'
alias bwif='bower info'
alias bws='bower search'
alias bwl='bower list'

#------------------------------------------------------------------------------
# npm
#------------------------------------------------------------------------------
alias n='npm'
alias nl='npm list'
alias nl0='npm list --depth=0 "$@" 2>/dev/null'


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
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home
export PATH=$PATH:$JAVA_HOME/bin

#------------------------------------------------------------------------------
# timey
#------------------------------------------------------------------------------
alias rtg="rake timey:get_article"
alias hrrtg="heroku run rake timey:get_article"


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
