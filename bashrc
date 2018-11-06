#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

alias p='sudo pacman -S'
alias p1='sudo pacman -R'
alias pu='sudo pacman -Syyu'
alias bg="wal -i ~/.config/wall.png" # Rerun pywal
alias bw="feh --bg-fill ~/.config/wall.png" # Rerun feh
alias ref="shortcuts.sh && source ~/.bashrc" # Refresh shortcuts manually and reload bashrc
alias xs="xrdb ~/.Xresources" # Sets Xresources
alias pictures='ranger ~/Pictures/Wallpapers'
alias n='neofetch'
alias music='ncmpcpp'
alias r='ranger'
alias pps='./pipes.sh/pipes.sh'
alias pio='cd'

# Setting Bash prompt. Capitalizes username and host if root user (my root user uses this same config file).
if [ "$EUID" -ne 0 ]
    then export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
    else export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]ROOT\[$(tput setaf 2)\]@\[$(tput setaf 4)\]$(hostname | awk '{print toupper($0)}') \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
fi

# minimal bash
PS1='\w \[\e[31m\][]ohvoid[]\[\e[0m\] '
source ~/.shortcuts
