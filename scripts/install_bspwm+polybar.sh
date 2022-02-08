#!/bin/bash
yay -S polybar nerd-fonts-hack picom feh bspwm sxhkd rofi lxappearance xdotool wpa_supplicant wireless_tools networkmanager nm-connection-editor network-manager-applet dunst exa scrot xclip mpc
cp ../.config/polybar $HOME/.config/ -r
cp ../.config/bspwm $HOME/.config/ -r 
cp ../.config/sxhkd $HOME/.config/ -r 
cp ../.config/rofi $HOME/.config/ -r
cp ../.config/dunst $HOME/.config/ -r


# Config connection
sudo systemctl enable NetworkManager.service
sudo systemctl enable wpa_supplicant.service
sudo systemctl start NetworkManager.service
