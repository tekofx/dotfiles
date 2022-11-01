This folder contains scripts and guides to setup a drawing tablet in manjaro, in my case a Huion 1060P

# How to setup up Huion 1060P on Manjaro

## Install driver, xinput and wacom GUI

`yay -S digimend-kernel-drivers-dkms-git xorg-xinput kcm-wacomtablet ` 

## Set buttons
We will use wacom utility

`yay -S xf86-input-wacom`

First list the devices and look for a device with "Pad pad" in its name

`xsetwacom --list devices`

Set a key using the device name for the Pad

`xsetwacom --set <device_name> Button 1 "key +ctrl +z -z -ctrl"`

For example:

`xsetwacom --set 'HID 256c:006d Pad pad"key +ctrl +z -z -ctrl"`

## To limit tablet to only 1 screen

See device name (like HDMI-0)

`xrandr`

Set tablet to use only one screen where <id> is the id of stylus tablet when running xinput and <screen> is the device name

`xinput map-to-output <id> <screen>`

For example:

`xinput map-to-output 10 HDMI-0`
