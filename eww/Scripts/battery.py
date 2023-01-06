#!/usr/bin/python

import time
import subprocess

bat_status_arr = ["", "", "", "", "", "", "", "", "", ""]


def get_bat_data():
    """Get data from battery

    Returns:
        dict: status, percentage, icon
    """
    acpi = subprocess.run(["acpi"], capture_output=True).stdout.decode("utf-8")
    acpi = acpi.split(",")

    status = acpi[0].split()[2]
    percentage = acpi[1][1:][:-1]
    icon = bat_status_arr[(int(percentage) // 10) - 1]

    return {"status": status, "percentage": percentage, "icon": icon}


def format_battery():

    data = get_bat_data()

    return data["icon"] + " " + data["percentage"] + "%"


print(f"{format_battery()}")
