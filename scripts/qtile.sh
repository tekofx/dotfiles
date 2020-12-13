#!/bin/bash

sudo pacman -S qtile feh compton cbatticon --noconfirm
cp -r ~/dotfiles/.config/qtile ~/.config
git clone https://github.com:Tekofx/wallpapers.git ~/