#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

neofetch

alias ls='ls --color=auto'
export PS1="|\e[36m\T\e[39m|\e[36m\u\e[39m@\e[36murxvt:\e[95m[\w]>\n\[$(tput sgr0)\]"

LS_COLORS='di=0;36';export LS_COLORS
