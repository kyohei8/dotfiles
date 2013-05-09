ZSH=$HOME/.oh-my-zsh

ZSH_THEME="miloshadzic"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# é©ìÆï‚äÆê›íË 
# autoload predict-on
# predict-on

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#------------------------------------------------------------------------------
# git
#------------------------------------------------------------------------------
alias gs="git status"
alias gpom="git push origin master"
alias gb="git branch"
alias garc='git archive --format=zip HEAD '
alias gronce="git reset --soft HEAD~1"
#„É≠„Ç∞
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
# project
#------------------------------------------------------------------------------
alias apstart="sudo apachectl -f /project/asahijutaku/asahijutaku/infra/local/apache/conf/httpd.conf -k start"
alias aprestart="sudo apachectl -f /project/asahijutaku/asahijutaku/infra/local/apache/conf/httpd.conf -k restart"
alias apstop="sudo apachectl -f /project/asahijutaku/asahijutaku/infra/local/apache/conf/httpd.conf -k stop"

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
export PATH=/opt/local/bin:/opt/local/sbin:/Users/kyohei/.rvm/gems/ruby-1.9.3-p0/bin:/Users/kyohei/.rvm/gems/ruby-1.9.3-p0@global/bin:/Users/kyohei/.rvm/rubies/ruby-1.9.3-p0/bin:/Users/kyohei/.rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/local/git/bin:usr/local/bin:$PATH
export PATH=/usr/local/bin:$PATH
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

eval "$(rbenv init -)"

date

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
