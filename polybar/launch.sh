#!/usr/bin/env sh

# Launch dunst
killall dunst
dunst &

# Launch polybar
killall polybar
polybar top &
polybar left &

# Start eww daemon
eww daemon

# Notify
notify-send "Launched polybar" -t 3000
