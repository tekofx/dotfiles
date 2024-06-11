#!/usr/bin/python

import subprocess

icons = ["", "睊"]

# Get current wifi card status
wifi_status = subprocess.run(
    "iw wlan0 link | grep SSID", shell=True, capture_output=True
).stdout.decode("utf-8")


# if returned string is 0 means there is not any active connection
if len(wifi_status) != 0:
    wifi_SSID = subprocess.run(
        "iwgetid -r", shell=True, capture_output=True
    ).stdout.decode("utf-8")
    print(icons[0] + "  " + wifi_SSID)
else:
    print(icons[1])
