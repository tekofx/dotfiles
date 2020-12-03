#!/bin/bash

sudo pacman -S alacritty
yay -S nerd-fonts-ubuntu-mono
cp -r ~/dotfiles/.config/alacritty ~/.config

# Dependecies for themes
sudo pacman -S python-yaml 
