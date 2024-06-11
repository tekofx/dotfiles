#!/bin/bash
yay -S polybar nerd-fonts-hack picom feh bspwm sxhkd rofi lxappearance xdotool wpa_supplicant wireless_tools networkmanager nm-connection-editor network-manager-applet dunst exa scrot xclip eww nerd-fonts-jetbrains-mono brightnessctl
cp ../polybar $HOME/.config/ -r
cp ../bspwm $HOME/.config/ -r 
cp ../sxhkd $HOME/.config/ -r 
cp ../rofi $HOME/.config/ -r
cp ../dunst $HOME/.config/ -r
cp ../eww $HOME/.config/ -r


# Config connection
sudo systemctl enable NetworkManager.service
sudo systemctl enable wpa_supplicant.service
sudo systemctl start NetworkManager.service
