#!/bin/bash
yay -S polybar nerd-fonts-hack picom feh i3-gaps rofi
cp ../.config/polybar $HOME/.config/ -r
cp ../.config/i3 $HOME/.config/ -r 
cp ../.config/rofi $HOME/.config/ -r
