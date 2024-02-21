## GIT  ##
alias gi='git init'
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'

## NAVIGATION  ##

alias l='ls -aX -I "." -I ".." --color=auto --group-directories-first'
alias ll='ls -aXl -I "." -I ".." --color=auto --group-directories-first'
alias c='clear'

## UTILITIES  ##

alias date='date +"%d/%m/%y (%a/%b) | %H:%M (%:z)"'
alias feh='feh -F'
alias r='ranger'

## NETPLAN ##

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
