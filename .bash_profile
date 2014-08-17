#color config
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export TERM=xterm-color

# Custom bash prompt via kirsle.net/wizards/ps1.html
export PS1="\[$(tput bold)\]\[$(tput setaf 4)\]\t|\[$(tput setaf 2)\]\W\[$(tput setaf 7)\]@\[$(tput setaf 5)\]\u\[$(tput setaf 7)\]$ \[$(tput sgr0)\]"
