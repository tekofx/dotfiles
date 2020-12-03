#!/bin/bash

# lxappearance
sudo pacman -S lxappearance

# Create .themes folder
mkdir ~/.themes

# gtk themes
git clone https://github.com/dracula/gtk.git ~/.themes/Dracula