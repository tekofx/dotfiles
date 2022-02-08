#!/bin/bash
function toggle() {
    eww $1 time
    eww $1 date
}
WINDOWS=`eww windows | grep "*time"`

if [[ $WINDOWS = "*time" ]]; then
    eww close time
else
    eww open time
fi

WINDOWS=`eww windows | grep "*date"`

if [[ $WINDOWS = "*date" ]]; then
    eww close date
else
    eww open date
fi