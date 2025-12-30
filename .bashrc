#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
#PS1='[\u@\h \W]\$ '

# Custom bash prompt via kirsle.net/wizards/ps1.html
PS1='[\[\e[36m\]\u@\h\[\e[35m\] \[\e[0m\]|\[\e[35m\] \[\e[93m\]\w\[\e[0m\]]\n\[\e[93m\]->\[\e[0m\]'

#start-up commands

alias vpn-on='wg-quick up wg-laptop'
alias vpn-off='wg-quick down wg-laptop'
alias nas='ssh bogdan@192.168.0.150'
alias ff='fastfetch'
alias playback='pactl load-module module-loopback'
