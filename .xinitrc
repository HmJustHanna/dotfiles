#!/bin/bash
while true; do
    BAT=$(cat /sys/class/power_supply/BAT1/capacity)
    DWM=$(dwm -v)
	xsetroot -name "BAT: $BAT% $(date '+ %H:%M %a') $DWM"
	sleep 60
done &
xrdb -merge ~/.Xresources &
feh --bg-scale /home/anna/Media/Pictures/wallpapers/simple-arch.png &
#setxkbmap -model pc105 -layout us,ru -option grp:win_space_toggle &
#/usr/bin/urxvt &
exec dwm
