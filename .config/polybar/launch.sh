#!/usr/bin/env sh
killall polybar
polybar menu -c ~/.config/polybar/menu.ini &
polybar workspaces -c ~/.config/polybar/workspaces.ini &
polybar battery -c ~/.config/polybar/battery.ini &
polybar date -c ~/.config/polybar/date.ini &
polybar sound -c ~/.config/polybar/sound.ini &



