#!/bin/bash
#
# ~/.xinitrc by https://github.com/HmJustHanna
#

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi &

$HOME/.local/bin/statbar.sh &                                        #statusbar for dwm
dunst -print &                                                       #start notification daemon
$HOME/.local/bin/notify/batt.sh &                                    #notify if battery <= 15%
xrdb -merge ~/.Xresources                                            #styling for urxvt
feh --bg-scale /home/anna/Media/pics/wallpapers/arch.png &           #set archlinux wallpaper
setxkbmap -model pc105 -layout us,ru -option grp:win_space_toggle &  #us/ru layout

exec dwm                                                             #start dwm
