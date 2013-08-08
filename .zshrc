ZSH=$HOME/.oh-my-zsh

ZSH_THEME="miloshadzic"

plugins=(git bundler gem rails3)

source $ZSH/oh-my-zsh.sh

# �����⊮�ݒ� 
#autoload predict-on
#predict-on

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#------------------------------------------------------------------------------
# git
#------------------------------------------------------------------------------
alias gs="git status -s"
alias gdi='gd --ignore-space-change'
alias gpom="git push origin master"
alias garc='git archive --format=zip HEAD '
alias gronce="git reset --soft HEAD~1"
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
#------------------------------------------------------------------------------
# heroku 
#------------------------------------------------------------------------------
alias gphm='git push heroku master'
alias h='heroku'
alias hps='heroku ps'
alias hl='heroku logs'
alias hrs='heroku restart'
alias hc='heroku config'
alias hpgsql='heroku pg:psql'
alias hpgi='heroku pg:info'

#------------------------------------------------------------------------------
# rvm
#-----------------------------------------------------------------------------
#alias rvm='rvm use'
#alias r193='rvm use 1.9.3@rails32'
#alias r200='rvm use 2.0.0@rails4'

#------------------------------------------------------------------------------
# project
#------------------------------------------------------------------------------
alias apstart="sudo apachectl -f /project/asahijutaku/asahijutaku-infra/distribution/apache/httpd.local/conf/httpd.conf -k start"
alias aprestart="sudo apachectl -f /project/asahijutaku/asahijutaku-infra/distribution/apache/httpd.local/conf/httpd.conf -k restart"
alias apstop="sudo apachectl -f /project/asahijutaku/asahijutaku-infra/distribution/apache/httpd.local/conf/httpd.conf -k stop"
alias mrw="more /etc/httpd/logs/rewrite.log"
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

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

## rbenv setting 
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

date
