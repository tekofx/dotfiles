#!/bin/bash
sudo pacman -S neovim

# Neovim dependencies
sudo pacman -S python3 python2 nodejs npm python2-pip ruby

# Vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Install all plugins
nvim +PlugInstall +qa

# Font
yay -S nerd-font-ubuntu-mono