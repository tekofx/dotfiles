#!/bin/bash

# Fish and dependencies
sudo pacman -S fish curl --noconfirm

# omf
fish <<'END_FISH'
    curl -L https://get.oh-my.fish | fish
END_FISH


# Make fish default shell
chsh -s /usr/bin/fish

# Install themes
fish <<'END_FISH'
    omf install spacefish
    omf install pure
END_FISH