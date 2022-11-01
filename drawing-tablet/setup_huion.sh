#!/bin/bash
stylus_id=9
screen=HDMI-0
device_name='HID 256c:006d Pad pad'

# Set tablet to main screen
xinput map-to-output $stylus_id $screen

# Set buttons
xsetwacom --set "$device_name" Button 1 "key +ctrl +z -z -ctrl"
