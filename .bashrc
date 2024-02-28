#
# ~/.bashrc by https://github.com/HmJustHanna
# some commands are from http://www.gitlab.com/dwt1/
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#export TERM="rxvt-unicode-256color"
export EDITOR="vim"
export MANPAGER="less"
#export GCC_COLORS="error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01"

HISTSIZE=1000
HISTFILESIZE=2000
HISTCONTROL=ignoreboth

set -o vi
shopt -s histappend
shopt -s checkwinsize
shopt -s cmdhist
#shopt -s globstar

alias gi="git init"
alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias gp="git push"
alias gb="git branch"

alias ls="ls --color=auto"
alias ll="ls -aXl -I "." -I ".." --color=auto --group-directories-first"
alias l="ls -aX -I "." -I ".." --color=auto --group-directories-first"
alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"
alias c="clear"

alias jctl="journalctl -p 3 -xb"
alias note="vim $HOME/Documents/notes/ubuntu-server.txt"

alias feh="feh -F"
alias N="newsboat"
alias weather="curl wttr.in/Mogilev"
alias dotfiles="$HOME/Scripts/dotfiles.sh"

#force_color_prompt=yes
PS1='[\u:\w]\$ '
