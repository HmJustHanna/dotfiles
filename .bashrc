#  __                        __                     
# /\ \                      /\ \                    
# \ \\\____     __      ____\ \ \___   _ __   ___   
#  \ \ '__`\  /'__`\   /',__\\ \  _ `\/\`'__\/'___\ 
#   \ \ \L\ \/\ \L\.\_/\__, `\\ \ \ \ \ \ \//\ \__/ 
#    \ \_,__/\ \__/.\_\/\____/ \ \_\ \_\ \_\\ \____\
#     \/___/  \/__/\/_/\/___/   \/_/\/_/\/_/ \/____/
#
# by https://github.com/HmJustHanna
#
# art from https://www.asciiart.eu/text-to-ascii-art
# some commands from http://www.gitlab.com/dwt1/

export TERM="rxvt-unicode-256color"
export EDITOR="vim"
export MANPAGER="less"
export GCC_COLORS="error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01"

HISTSIZE=1000
HISTFILESIZE=2000
HISTCONTROL=ignoreboth

set -o vi
shopt -s histappend
shopt -s checkwinsize
shopt -s cmdhist
#shopt -s globstar

#bind "set completion-ignore-case on"

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
alias note="vim $HOME/Docs/notes/ubuntu-server.txt"

alias feh="feh -F"
alias N="newsboat"
alias r="ranger"
alias weather="curl wttr.in/Mogilev"
alias backup="$HOME/Scripts/backups/dotfiles.sh"


# NETPLAN


connect-wifi() {
#overwrite the existing configuration with home-wifi.yaml
    sudo cp /etc/netplan/lib/home-wifi.yaml /etc/netplan/netplan.yaml
#alert your system to the changes
        sudo netplan generate
        sudo netplan apply
}

connect-hotspot() {
    sudo cp /etc/netplan/lib/hotspot.yaml /etc/netplan/netplan.yaml
        sudo netplan generate
        sudo netplan apply
}

connect-eth() {
    sudo cp /etc/netplan/lib/home-eth.yaml /etc/netplan/netplan.yaml
        sudo netplan generate
        sudo netplan apply
}

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac



# LESS

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"


# CHROOT


if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

#case "$TERM" in
#    xterm-color|*-256color) color_prompt=yes;;
#esac


# PROPMT


force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u \[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u \W\$ '
fi
unset color_prompt force_color_prompt


# COMPLETION


if ! shopt -oq posix; then
    if [ -f /usr/share/bash-completion/bash_completion ]; then
        . /usr/share/bash-completion/bash_completion
    elif [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
    fi
fi
