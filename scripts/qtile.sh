#!/bin/bash

sudo pacman -S qtile feh compton cbatticon lightdm --noconfirm
yay -S lightdm-webkit-theme-aether

sudo systemctl enable lightdm.service

cp -r ~/dotfiles/.config/qtile ~/.config
git clone https://github.com/Tekofx/wallpapers.git ~/