#!/bin/sh

# systray battery icon
cbatticon -u 5 &
# systray volume
volumeicon &
# Wallpaper
feh --bg-scale wallpapers/selected* &
picom --config ~/.config/qtile/scripts/picom.conf &
setxkbmap es &
