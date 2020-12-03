#!/bin/bash

# Fish and dependencies
sudo pacman -S fish curl

# omf
curl -L https://get.oh-my.fish | fish

# Make fish default shell
chsh -s /usr/bin/fish

# Install themes
fish <<'END_FISH'
    omf install spacefish
    omf install pure
END_FISH