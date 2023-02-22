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

# setup autolock (I use https://github.com/google/xsecurelock)
xset s 600 5 &
xss-lock -n /usr/lib/xsecurelock/dimmer -l -- xsecurelock &

# configure monitor output
# xrandr --dpi 150
$HOME/.scripts/display-output/use-laptop.sh &

# set keyboard layouts
setxkbmap -model pc104 -layout us,ru -option grp:alt_shift_toggle &

exec i3
