#!/bin/sh

xrdb -merge $HOME/.Xresources

# start some nice programs (shitty! I am not even shure if it is really needed)
# but will leave it 'cause it was in the default .xinitrc!
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

xrandr --dpi 150
setxkbmap -model pc104 -layout us,ru -option grp:alt_shift_toggle &
exec i3
