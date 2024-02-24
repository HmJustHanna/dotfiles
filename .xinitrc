#!/bin/bash
while true; do
	#xsetroot -name "$(date)"
    BAT=$(cat /sys/class/power_supply/BAT1/capacity)
	xsetroot -name "BAT: $BAT% $(date '+ %H:%M %a')"
	sleep 60
done&
xrdb -merge ~/.Xresources &
feh --bg-scale /home/anna/Pics/wallpaps/harley.jpg &
setxkbmap -model pc105 -layout us,ru -option grp:win_space_toggle
/usr/bin/urxvt &
exec dwm
