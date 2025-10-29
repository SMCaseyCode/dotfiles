#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR='nvim'

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias y='yazi'
alias vim='nvim'
PS1='[\u@\h \W]\$ '
