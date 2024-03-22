#
# ~/.bashrc for user by https://github.com/HmJustHanna
# some commands are from http://www.gitlab.com/dwt1/
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

LS_COLORS='*.h=01;33:*.c=01;31:*.tar=01;31:*.xz=01;31:*.tgz=01;31:*.7z=01;31:*.rz=01;31:*.zip=01;31:*.z=01;31:*.gz=01;31:*.tz=01;31:*.deb=01;31:*.jpg=01;35:*.jpeg=01;35:*.mjpg=01;35:*.mjpeg=01;35:*.gif=01;35:*.png=01;35:*.svg=01;35:*.mpg=01;35:*.mpeg=01;35:*.mkv=01;35:*.webm=01;35:*.webp=01;35:*.mp4=01;35:*.m4v=01;35:*.qt=01;35:*.avi=01;35:*.mp3=0;197;100:*.mpc=00;36:*.part=00;90:*.swp=00;90:*.tmp=00;90:*~=00;90:*#=00;90'

GREEN="\[\e[1;32m\]"
NC="\[\e[1;00m\]"

#export TERM='rxvt-unicode-256color'
export LS_COLORS
#export COLORTERM='truecolor'
export BROWSER='firefox'
export EDITOR='vim'
export MANPAGER='less'
export PATH="${PATH}:/home/anna/.local/bin"
#export FZF_DEFAULT_OPTS="--height=10% --layout=reverse  --border=none --margin=0 --padding=0"
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

HISTSIZE=2000
HISTFILESIZE=4000
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
alias gu='$HOME/.local/bin/gitupdate.sh' 
alias du='$HOME/.local/bin/dotsupdt.sh'        #move all dotfiles to local repo

alias ls='ls --color=auto'
alias ll='ls -aXl -I '.' -I '..' --color=auto --group-directories-first'
alias l='ls -aX -I '.' -I '..' --color=auto --group-directories-first'
alias grep='grep --color=always'
alias diff='diff --color=always'

alias c='clear'
alias his='history'
alias :q='exit'
alias off='shutdown -P now'
alias feh='feh -.'
alias mkdir='mkdir -p'
alias Y='ytfzf -t'
alias T='trans -d'                              #target lang is en
alias m='mutt'                              #target lang is en
alias TR='trans -b -t ru "$1"'                  #target lang is ru
alias N='vim $HOME/Documents/notes/arch.txt'

alias i='irssi'

function parse_git_branch {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/';
}
#PS1="[${GREEN}\u${NC}][\W][${GREEN}\$(parse_git_branch)${NC}] -> "
PS1="[${GREEN}\u${NC}][\W] > "

#if [ -z "${PS1}" ]; then return; fi
#export PROMPT_COMMAND="history -a; history -c; history -r; ${PROMPT_COMMAND}"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
