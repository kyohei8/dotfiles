[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

##
# Your previous /Users/kyohei/.bash_profile file was backed up as /Users/kyohei/.bash_profile.macports-saved_2012-02-11_at_03:57:49
##

# MacPorts Installer addition on 2012-02-11_at_03:57:49: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


##
# Your previous /Users/kyohei/.bash_profile file was backed up as /Users/kyohei/.bash_profile.macports-saved_2012-02-11_at_03:59:50
##

# MacPorts Installer addition on 2012-02-11_at_03:59:50: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# alias titanium="~/Library/Application\ Support/Titanium/mobilesdk/osx/1.8.1/titanium.py"
alias titanium="/Users/kyohei/Library/Application\ Support/Titanium/mobilesdk/osx/1.8.2/titanium.py"

#color config
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export TERM=xterm-color

# Custom bash prompt via kirsle.net/wizards/ps1.html
export PS1="\[$(tput bold)\]\[$(tput setaf 4)\]\t|\[$(tput setaf 2)\]\W\[$(tput setaf 7)\]@\[$(tput setaf 5)\]\u\[$(tput setaf 7)\]$ \[$(tput sgr0)\]"


alias ls='ls -G'
alias ll='ls -hl'
