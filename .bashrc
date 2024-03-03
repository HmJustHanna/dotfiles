#
# ~/.bashrc for user by https://github.com/HmJustHanna
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

alias gi='git init'
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gb='git branch'

alias ls='ls --color=always'
alias ll='ls -aXl -I '.' -I '..' --color=always --group-directories-first'
alias l='ls -aX -I '.' -I '..' --color=always --group-directories-first'
alias grep='grep --color=always'
#alias fgrep='fgrep --color=always'
#alias egrep='egrep --color=always'
alias diff='diff --color=always'
#export LESS='-R --use-color -Dd+r$Du+b$'

alias c='clear'
alias his='history'
alias ..='cd ..'
alias :q='exit'
alias jctl='journalctl -p 3 -xb'
alias note='vim $HOME/Documents/notes/ubuntu-server.txt'
alias feh='feh -F'
alias N='newsboat'
alias P='podboat'
alias M='mocp'
alias ip='ip -c a'
alias shut='shutdown -P now'

alias note='vim $HOME/Documents/notes/arch.txt'
alias weather='curl wttr.in/Mogilev'
alias dotfiles='$HOME/Scripts/dotfiles.sh'
alias gitupdate='$HOME/Scripts/gitupdate.sh'

PS1='[\[\e[1;32m\]\u \[\e[m\]\w]\$ '
