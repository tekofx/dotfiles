#!/bin/bash

function toggle() {
    eww $1 poweroff
    eww $1 reboot
    eww $1 logout
    eww $1 lock
}

WINDOWS=`eww windows | grep "*poweroff"`

if [[ $WINDOWS = "*poweroff" ]]; then
    eww close poweroff
else
    eww open poweroff
fi


WINDOWS=`eww windows | grep "*reboot"`

if [[ $WINDOWS = "*reboot" ]]; then
    eww close reboot
else
    eww open reboot
fi

WINDOWS=`eww windows | grep "*logout"`

if [[ $WINDOWS = "*logout" ]]; then
    eww close logout
else
    eww open logout
fi

WINDOWS=`eww windows | grep "*lock"`

if [[ $WINDOWS = "*lock" ]]; then
    eww close lock
else
    eww open lock
fi