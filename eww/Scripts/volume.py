#!/usr/bin/python

import subprocess

icons = ["墳", "婢"]

# Get current volume status
volume_status = subprocess.run(
    "pulsemixer --get-mute", shell=True, capture_output=True
).stdout.decode("utf-8")

volume = (
    subprocess.run("pulsemixer --get-volume", shell=True, capture_output=True)
    .stdout.decode("utf-8")
    .split()[0]
)

# if returned string is 0 means the volume is not muted
if int(volume_status) == 0:
    print(icons[0] + " " + volume + "%")
else:
    print(icons[1])
