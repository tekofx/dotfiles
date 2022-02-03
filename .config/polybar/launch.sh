#!/usr/bin/env sh

# Launch dunst
killall dunst
dunst &

# Launch polybar
killall polybar
polybar top &
polybar left &

# Notify
notify-send "Launched polybar" -t 3000