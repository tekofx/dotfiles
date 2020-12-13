#!/bin/bash

# fzf
git clone https://github.com/junegunn/fzf.git ~/bin/fzf/
cd ~/bin/fzf/
./install

# Install bat, exa and ncdu
sudo pacman -S bat exa ncdu --noconfirm

# Install gotop, navi and tldr
yay -S gotop navi tldr

# Copy navi cheats
git clone https://github.com/tekofx/navi-cheats.git ~/bin/
cp -r ~/bin/navi-cheats/ ~/.local/share/navi

# Install fish utilities
fish <<'END_FISH'
    omf install z
    omf install https://github.com/wfxr/forgit
END_FISH
