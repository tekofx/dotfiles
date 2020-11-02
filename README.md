# Arch configuration
## Lightdm and qtile installation
After installing Arch we will need to install lightdm and qtile by running:

```
sudo pacman -S lightdm lightdm-gtk-greeter qtile
```

Then we will enable lightdm service and reboot to get the login page of lightdm:

```
sudo systemctl enable lightdm
reboot
```
## Basic configuration
Git is not installed by defaul:

```
sudo pacman -S git
```

Some packages need to be installed via AUR so we will install yay by cloning it in /bin (folder in which I clone repos I need to install packages)

```
mkdir -p ~/bin/yay
git clone https://aur.archlinux.org/yay.git ~/bin/yay
cd ~/bin/yay
makepkg -si
```


Clone this repo on bin

```
git clone https://github.com/tekofx/dotfiles.git ~/bin/dotfiles
```
## Qtile configuration
Change keybord layout to spanish:

```
setxkbmap es
```

If you want to make it permanent, go to [Xprofile](#Xprofile)

Install a bunch of useful programs such as alacritty, rofi, feh, pulseaudio, pavucontrol and thunar:

```
sudo pacman -S alacritty rofi feh pulseaudio pavucontrol thunar
```

Clone this repo and cp ~/bin/dotfiles/.config/qtile to ~/.config/qtile

```
mkdir ~/.config/qtile
cp /bin/dotfiles/.config/qtile ~/.config/qtile
```

Restart qtile with mod+ctrl+r


## Xprofile
To run commands before the windows manager starts, we need to create a file ~/.xprofile and add to it this commands. We will need xorg-xinit if we don't have it intalled. If we want to set keyboard layout at start:

```
touch ~/.xprofile
echo setxkbmap es & >> ~/.xprofile
```


## Alacritty configuration
Install nerd-fonts

```
yay S nerd-fonts-ubuntu-mono
```

Copy configs

```
cp -r ~/bin/dotfiles/.config/alacritty ~/.config
```
## Neovim configuration

## Terminal utilities
### Fish
Install fish with and fisher to handle plugins:

```
sudo pacman -S fish curl
```

And install fisher to handle plugins:

```
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
```

If you wan to change bash for fish:

```
chsh -s /usr/bin/fish
```


### Bat
```
sudo pacman -S bat
```

### Fzf
```
git clone https://github.com/junegunn/fzf.git ~/bin/fzf/
cd ~/bin/fzf/
./install
```

### Navi
```
yay -S navi
```
### Goto
```
fisher add jethrokuan/z
```
### Forgit
```
git clone https://github.com/wfxr/forgit.git ~/bin/forgit
```

Source it to your shell's rc.
For Bash:

```
echo 'source ~/bin/forgit/forgit.plugin.sh' >> ~/.bashrc
```

For Zsh:

```
echo 'source ~/bin/forgit/forgit.plugin.zsh' >> ~/.zshrc
```

### ncdu
```
sudo pacman -S ncdu
```

### exa
```
sudo pacman -S exa
```
### tldr
```
yay -S tldr
```
## Shell configuration
Copy your shell's rc to ~

# Themes and customization
## Gtk
Download a gtk3-theme and a icons and move them to /usr/share/themes and /usr/share/icons. When you log in next times changes should be visible

## Qtile
Create a config.json file in ~/.config/qtile and write in it:

```
{"theme": "material-ocean"}
```

or the theme you want to apply


## Picom
```
cp /etc/xdg/picom.conf ~/.config/picom/picom.conf
```
```
picom --config ~/.config/picom/picom.conf
```

Add picom to .xconfigure to start automatically
## Lightdm
We will need lightdm-webkit2-greeter and lightdm-webkit-theme-aether

```
sudo pacman -S lightdm-webkit2-greeter
yay -S lightdm-webkit-theme-aether
```

To change the profile picture, we hace to move to ~ the picture we want and change it's name to .face

## Fish
```
fisher add matchai/spacefish
fisher add rafaelrinaldi/pure
fisher add jethrokuan/z
fisher add wfxr/forgit
```


# Alacritty
To change a theme run:

```
cd .config/alacritty
./theme.py dracula
```
