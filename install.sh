#!/bin/bash
#! Written By Pardesi_Cat <https://pardesicat.xyz>

files="requirements.txt"
fextra="extra.txt"

cleann () {

        echo
	echo -e "clean and updating system"
	sudo rm -rf /var/cache/pacman
        sudo pacman -Syu
	sudo rm -rf /var/cache/pacman
}

pmr () {
 
 cd $(pwd)
 xargs sudo pacman --needed --noconfirm -S
}


echo -e "This script will download and replace the  personal configs of"
echo
echo -e "Pardesi_Cat"
echo
echo -e "That is for DWM used and confis will install user home folder"
echo
echo -e "note : only for arch linux"
sleep 4 


cleann
echo -e "installing $printf "$files" using pacman"

echo
pmr < $files
sleep 2
cleann
sleep 2

 cp -r $(pwd)/xinitrc $HOME/
 mv $HOME/xinitrc $HOME/.xinitrc

 cp -r $(pwd)/alacritty $HOME/.config/

 mkdir $HOME/Pictures/pcatwallpapers
 cp -r $(pwd)/wallpapers/* $HOME/Pictures/pcatwallpapers/




 




