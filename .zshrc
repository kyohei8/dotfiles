# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# z https://github.com/rupa/z
. `brew --prefix`/Cellar/z/1.8/etc/profile.d/z.sh

# 自動補完設定
#autoload predict-on
#predict-on

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
#
# 起動時に呼び出すと重くなるのでコメントアウトにする。利用する場合は手動で呼び出す
#-----------------------------------------------------------------------------
# source ~/.nvm/nvm.sh
# nvm use stable

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

# MySQL Path Setting
export PATH=$PATH:/usr/local/mysql/bin

#重複したpathを一意にする
typeset -U path cdpath fpath manpath

# aliases
for file in ~/.{zshrc-local,aliases}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# `take` command
# Create a new directory and change to it, will create intermediate directories as required.
function take() {
  mkdir -p $1
  cd $1
}

# iterm2 shell integration
source /Users/ktsukuda/.iterm2_shell_integration.zsh
iterm2_print_user_vars() {
  t1='git =>'
  gitBranch=$((git branch 2> /dev/null) | grep \* | cut -c3-)
  on=' on '
  gitRepo=$([[ -d .git ]] && basename `git rev-parse --show-toplevel`);
  if ! [ -z ${gitBranch} ]; then
    iterm2_set_user_var git ${t1}${gitRepo}${on}${gitBranch}
  fi
  iterm2_set_user_var ip $(ip)
}

date
