#!/bin/bash
stylus_id=$(xsetwacom --list devices | grep stylus | awk -F ' ' '{print $5}')
screen=HDMI-0
tablet_name='HID 256c:006d Pad pad'
stylus_name='HID 256c:006d stylus'

# Set tablet to main screen
xinput map-to-output $stylus_id $screen

# Set button in stylus
xsetwacom --set "$stylus_name" Button 2 "key +ctrl +alt +1 -1 -alt -ctrl" 

# Set buttons in tablet
xsetwacom --set "$tablet_name" Button 1 "key b"
xsetwacom --set "$tablet_name" Button 2 "key +ctrl +1 -1 -ctrl" 
xsetwacom --set "$tablet_name" Button 3 "key n" 
xsetwacom --set "$tablet_name" Button 9  "key +ctrl"
xsetwacom --set "$tablet_name" Button 11  "key +space"
xsetwacom --set "$tablet_name" Button 13 "key -"
xsetwacom --set "$tablet_name" Button 14 "key +"

xsetwacom --set "$tablet_name" Button 15 "key +ctrl +z -z -ctrl"
xsetwacom --set "$tablet_name" Button 16 "key +ctrl +y -y -ctrl"

