#!/bin/bash
pacman -S --needed - < packagelist.txt
mkdir $HOME/.chexos/AUR

AurFile="$HOME/.chexos/aurlist.txt"
AurLines=$(cat AurFile)
for Line in $AurLines
do
	cd $HOME/.chexos/AUR
	git clone https://aur.archlinux.org/$Line.git
	cd $HOME/.chexos/AUR/$Line
	makepkg -si
done

cp $HOME/.chexos/dotfiles $HOME -r

cd $HOME/.chexos
./finish-installation.sh
