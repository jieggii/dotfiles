rm -rf .config && mkdir .config
cd .config/
	cp -r ~/.config/polybar .
	cp -r ~/.config/picom .
	cp -r ~/.config/sxhkd .
	cp -r ~/.config/rofi .
	cp -r ~/.config/termite .
	cp -r ~/.config/bspwm .
	mkdir nvim
cd ..

cp -r ~/.config/nvim/init.vim .config/nvim/

cp ~/.zshrc .
cp ~/.zprofile .
cp ~/.xinitrc .


