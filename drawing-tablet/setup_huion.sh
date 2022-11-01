#!/bin/bash
stylus_id=9
screen=HDMI-0
device_name='HID 256c:006d Pad pad'

# Set tablet to main screen
xinput map-to-output $stylus_id $screen

# Set buttons
xsetwacom --set "$device_name" Button 1 "key b"


xsetwacom --set "$device_name" Button 11 "key +ctrl +z -z -ctrl"
xsetwacom --set "$device_name" Button 12 "key +ctrl +y -y -ctrl"
