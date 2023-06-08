#!/bin/sh

xrdb -merge $HOME/.Xresources

# start some nice programs
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# set USB mouse acceleration
xinput --set-prop 13 'libinput Accel Speed' 0.75

# setup autolock (I use https://github.com/google/xsecurelock)
xset s 600 5 &
xss-lock -n /usr/lib/xsecurelock/dimmer -l -- xsecurelock &

# configure monitor output
# xrandr --dpi 150
#$HOME/.scripts/display-output/use-laptop.sh &

# set keyboard layouts
setxkbmap -model pc104 -layout us,ru -option grp:shift_caps_toggle

# swap left alt and windows key
setxkbmap -option altwin:swap_alt_win

exec i3
