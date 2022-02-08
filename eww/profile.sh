#!/bin/bash

function toggle() {
    eww $1 profile
}
WINDOWS=`eww windows | grep "*profile"`

if [[ $WINDOWS = "*profile" ]]; then
    eww close profile
else
    eww open profile
fi