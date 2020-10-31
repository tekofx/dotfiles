# Arch configuration
## Lightdm and qtile installation
After installing Arch we will need to install lightdm and qtile by running:

`sudo pacman -S lightdm lightdm-gtk-greeter qtile`

Then we will enable lightdm service and reboot to get the login page of lightdm:

`sudo systemctl enable lightdm
 reboot`
## Basic configuration
Git is not installed by defaul:

`sudo pacman -S git`

Some packages need to be installed via AUR so we will install yay by cloning it in /bin (folder in which I clone repos I need to install packages)

`mkdir -p ~/bin/yay
git clone https://aur.archlinux.org/yay.git ~/bin/yay
cd ~/bin/yay
makepkg -si`

## Qtile configuration
Change keybord layout to spanish:

`setxkbmap es`

Install a bunch of useful programs such as alacritty, rofi, feh, pulseaudio, pavucontrol:

`sudo pacman -S alacritty rofi feh pulseaudio pavucontrol`


## Alacritty configuration

## Neovim configuration 

## Terminal utilities

## Zsh configuration


