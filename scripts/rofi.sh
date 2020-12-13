#!/bin/bash

# Install rofi and dependencies
sudo pacman -S rofi papirus-icon-theme --noconfirm
yay -S nerd-fonts-ubuntu-mono


# Config theme
git clone https://github.com/davatorium/rofi-themes.git
sudo cp rofi-themes/User\ Themes/onedark.rasi /usr/share/rofi/themes


# Widgets
git clone https://github.com/adi1090x/rofi.git ~/bin/rofi-widgets
cd ~/bin/rofi-widgets
chmod +x setup.sh
./setup.sh


# Copy configs
cp -r ~/dotfiles/.config/rofi ~/.config/