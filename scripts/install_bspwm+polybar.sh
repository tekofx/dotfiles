#!/bin/bash
yay -S polybar nerd-fonts-hack picom feh bspwm sxhkd rofi lxappearance xdotool
cp ../.config/polybar $HOME/.config/ -r
cp ../.config/bspwm $HOME/.config/ -r 
cp ../.config/sxhkd $HOME/.config/ -r 
cp ../.config/rofi $HOME/.config/ -r
