#!/bin/bash
#
# ~/.xinitrc by https://github.com/HmJustHanna
#
while true; do
    BAT=$(cat /sys/class/power_supply/BAT1/capacity)                                #battery percentage
    DOTS=$(cd $HOME/dotfiles && git status -s | wc -l)                              #git status for dotfiles
    DWM=$(cd $HOME/suckless/dwm && git status -s | wc -l)                           #git status for dwm
    DM=$(cd $HOME/suckless/dmenu && git status -s | wc -l)                          #git status for dwm
    ST=$(cd $HOME/suckless/st && git status -s | wc -l)                             #git status for dwm
    xsetroot -name "| DOTS: $DOTS DWM: $DWM DM: $DM ST: $ST | BAT: $BAT% $(date '+ %H:%M') |"      #show in dwm bar
	sleep 60                                                                        #update every min
done &
xrdb -merge ~/.Xresources &                                                         #for urxvt
feh --bg-scale /home/anna/Media/Pictures/wallpapers/simple-arch.png &               #set archlinux wallpaper
setxkbmap -model pc105 -layout us,ru -option grp:win_space_toggle &                 #us/ru layout
#/usr/bin/urxvt &                                                                   #start urxvt
exec dwm                                                                            #start dwm
