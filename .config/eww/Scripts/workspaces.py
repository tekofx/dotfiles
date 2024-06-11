#!/usr/bin/python

import subprocess
import os
import socket
import os

used = ""


def update_workspace(active_workspace):
    icons = ["", "", "", "", "", "", "", "", "", ""]

    active_workspace = active_workspace - 1
    icons[active_workspace] = used

    prompt = f'(box (label :text "{icons[0]}  {icons[1]}  {icons[2]}  {icons[3]}  {icons[4]}  {icons[5]}  {icons[6]}  {icons[7]}  {icons[8]}  {icons[9]}" ))'

    subprocess.run(f"echo '{prompt}'", shell=True)


sock = socket.socket(socket.AF_UNIX, socket.SOCK_STREAM)

server_address = f'/tmp/hypr/{os.environ["HYPRLAND_INSTANCE_SIGNATURE"]}/.socket2.sock'

sock.connect(server_address)

while True:
    new_event = sock.recv(4096).decode("utf-8")

    for item in new_event.split("\n"):
        if "workspace>>" == item[0:11]:
            workspaces_num = item[-1]

            update_workspace(int(workspaces_num))
