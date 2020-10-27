#! /bin/sh

rm -rf .config && mkdir .config
cp -r ~/.config/polybar .config/
cp -r ~/.config/picom .config/
cp -r ~/.config/sxhkd .config/
cp -r ~/.config/rofi .config/
cp -r ~/.config/termite .config/
cp -r ~/.config/bspwm .config/
cp -r ~/.config/nvim .config/
cp -r ~/.config/redshift .config/
cp -r ~/.config/omf .config/
cp -r ~/.config/fish .config/
cp -r ~/.config/user-dirs.dirs .config/

cp ~/.xinitrc .
cp ~/.gitconfig .
