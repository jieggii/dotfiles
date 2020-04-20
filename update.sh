
rm -rf config && mkdir config && cd config/
cp -r ~/.config/rofi .
cp -r ~/.config/ranger .
cp -r ~/.config/neofetch .
cp -r ~/.config/termite .
cp -r ~/.config/sublime-text-3 .
cp -r ~/.config/polybar .
cd ..

rm -rf i3 && mkdir i3 && cd i3/
cp -r ~/.i3/config .
cd ..

cp ~/.config/compton.conf .
