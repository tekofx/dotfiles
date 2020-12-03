#!/bin/bash

sudo pacman -S qtile
cp -r ~/dotfiles/.config/qtile ~/.config
git clone git@github.com:Tekofx/wallpapers.git ~/