#!/bin/bash

sudo pacman -S alacritty --noconfirm
yay -S nerd-fonts-ubuntu-mono --noconfirm
cp -r ~/dotfiles/.config/alacritty ~/.config

# Dependecies for themes
sudo pacman -S python-yaml --noconfirm
