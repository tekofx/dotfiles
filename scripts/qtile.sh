#!/bin/bash

cp -r ~/dotfiles/.config/qtile ~/.config
touch ~/.config/qtile/config.json

echo {"theme": "material-ocean"} >> ~/.config/qtile/config.json