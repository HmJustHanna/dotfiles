#!/bin/bash
#
# ~/.xinitrc by https://github.com/HmJustHanna
#

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

$HOME/.local/bin/statusbar.sh &                                                     #statusbar for dwm
dunst -print &                                                                      #start notification daemon
#$HOME/.local/bin/numlock.sh &                                                       #numlock status
$HOME/.local/bin/battery-notify.sh &                                                #notify if battery <= 15%
xrdb -merge ~/.Xresources                                                           #styling for urxvt
exec urxvt &                                                                        #run urxvt
feh --bg-scale /home/anna/Media/Pictures/wallpapers/simple-arch.png &               #set archlinux wallpaper
setxkbmap -model pc105 -layout us,ru -option grp:win_space_toggle &                 #us/ru layout

exec dwm                                                                            #start dwm
