rm -rf .config && mkdir .config && cd .config/
cp -r ~/.config/rofi .
cp -r ~/.config/ranger .
cp -r ~/.config/termite .
cp -r ~/.config/i3blocks .
cp ~/.config/compton.conf .
cd ..

rm -rf .i3 && mkdir .i3 && cd .i3/
cp -r ~/.i3/config .
cd ..

cp ~/.zshrc .
cp ~/.profile .
