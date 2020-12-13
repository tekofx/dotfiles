#!/bin/bash

# lxappearance
sudo pacman -S lxappearance --noconfirm

# Create .themes folder
mkdir ~/.themes

# gtk themes
git clone https://github.com/dracula/gtk.git ~/.themes/Dracula