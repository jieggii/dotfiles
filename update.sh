rm -rf .config && mkdir .config
cd .config/
	cp -r ~/.config/polybar .
	cp -r ~/.config/picom .
	cp -r ~/.config/sxhkd .
	cp -r ~/.config/rofi .
	cp -r ~/.config/termite .
	cp -r ~/.config/bspwm .
	cp -r ~/.config/nvim .
cd ..

cp ~/.zshrc .
cp ~/.zprofile .
cp ~/.xinitrc .


