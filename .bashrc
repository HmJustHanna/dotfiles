#
# ~/.bashrc for root user by https://github.com/HmJustHanna
# some commands are from http://www.gitlab.com/dwt1/
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#export TERM='rxvt-unicode-256color'
export TERM='st'
export BROWSER='firefox'
export EDITOR='vim'
export MANPAGER='less'
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

HISTSIZE=1000
HISTFILESIZE=2000
HISTCONTROL=ignoreboth

set -o vi
shopt -s histappend
shopt -s checkwinsize
shopt -s cmdhist
#shopt -s globstar

alias ls='ls --color=always'
alias ll='ls -aXl -I '.' -I '..' --color=always --group-directories-first'
alias l='ls -aX -I '.' -I '..' --color=always --group-directories-first'
alias grep='grep --color=always'
alias diff='diff --color=always'

alias c='clear'
alias his='history'
alias ..='cd ..'
alias :q='exit'
alias jctl='journalctl -p 3 -xb'
alias ip='ip -c a'
alias shut='shutdown -P now'

PS1='[\[\e[1;32m\]\u\[\e[m\]\w]\$ '
