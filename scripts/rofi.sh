#!/bin/bash

# Install rofi and dependencies
sudo pacman -S rofi papirus-icon-theme
yay -S nerd-fonts-ubuntu-mono


# Config theme
git clone https://github.com/davatorium/rofi-themes.git
sudo cp rofi-themes/User\ Themes/onedark.rasi /usr/share/rofi/themes

# Copy configs
cp -r dotfiles/.config/rofi ~/.config
