rm -rf .config && mkdir .config
cd .config/
	cp -r ~/.config/polybar .
	cp -r ~/.config/picom .
	cp -r ~/.config/sxhkd .
	cp -r ~/.config/rofi .
	cp -r ~/.config/termite .
cd ..

rm -rf Wallpapers && mkdir Wallpapers
cd Wallpapers/
	cp ~/Wallpapers/* .
cd ..

cp ~/.zshrc .
cp ~/.zprofile .
cp ~/.xinitrc .


