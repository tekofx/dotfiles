#!/bin/bash

# fzf
git clone https://github.com/junegunn/fzf.git ~/bin/fzf/
cd ~/bin/fzf/
./install

# Install bat, exa and ncdu
sudo pacman -S bat exa ncdu

# Install gotop, navi and tldr
yay -S gotop navi tldr

# Install fish utilities
fish <<'END_FISH'
    omf install z
    omf install https://github.com/wfxr/forgit
END_FISH
