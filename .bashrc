#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export NOTES=/home/user1/Documents/Notes

alias config='/usr/bin/git --git-dir=/home/user1/.cfg/ --work-tree=/home/user1'
