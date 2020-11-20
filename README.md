- [Arch configuration](#arch-configuration)
  - [Lightdm and qtile installation](#lightdm-and-qtile-installation)
  - [Basic configuration](#basic-configuration)
  - [Qtile configuration](#qtile-configuration)
  - [Xprofile](#xprofile)
  - [Alacritty configuration](#alacritty-configuration)
  - [Neovim configuration](#neovim-configuration)
    - [Installation](#installation)
    - [Plugin configuration](#plugin-configuration)
      - [Requirements](#requirements)
      - [Airline & Nerdtree](#airline--nerdtree)
      - [Coc](#coc)
        - [coc-java](#coc-java)
        - [coc-clangd](#coc-clangd)
      - [Plugins included](#plugins-included)
        - [General use](#general-use)
        - [Git](#git)
    - [Keybindings](#keybindings)
      - [General use](#general-use-1)
        - [Plugins](#plugins)
  - [Terminal utilities](#terminal-utilities)
    - [Fish](#fish)
    - [Bat](#bat)
    - [Fzf](#fzf)
    - [Navi](#navi)
    - [Goto](#goto)
    - [Forgit](#forgit)
    - [ncdu](#ncdu)
    - [exa](#exa)
    - [tldr](#tldr)
  - [Shell configuration](#shell-configuration)
- [Themes and customization](#themes-and-customization)
  - [Gtk](#gtk)
  - [Qtile](#qtile)
  - [Picom](#picom)
  - [Lightdm](#lightdm)
  - [Fish](#fish-1)
- [Alacritty](#alacritty)

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





### Installation
Install neovim:
`sudo pacman -S neovim`

Clone this repo on ~/.config/nvim by running

`git clone https://github.com/Tekofx/nvim-config.git`


### Plugin configuration
#### Requirements
To install all dependencies run:

`sudo pacman -S python3 python2 nodejs npm python2-pip ruby`

We will need vim-plug to manage plugins. To install it run:

```sh
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

To install all plugins in the init.vim run :

`:PlugInstall` on Neovim

or

`nvim +PlugInstall +qa` on the command line

#### Airline & Nerdtree
This two plugins need an special font to show icons, I recommend  nerd-font-ubuntu-mono.
You will need to change your terminal font to Meslo


#### Coc

##### coc-java

```
sudo pacman -S jdk8-openjdk
```

##### coc-clangd
Install clangd with:

`:CocCommand clang.install`

Add the clangd path to your PATH. If you used the command above it should be on:
~/.config/coc/extensions/coc-clangd-data/install/10.0.0/clangd_10.0.0/bin/


#### Plugins included

##### General use
- **NerdTree**: Tree explorer
- **fzf**: Fuzzy finder
- **Airline**: Status line
- **Airline-themes**: Customize airline
- **Coc**: Completion tool
- **Devicons**: Icons for NerdTree
- **Vim-auto-save**: Autosave buffer

##### Git
- **Signify**: Show git info at left comlumn
- **Fugitive**: Git commands in neovim
- **Rhubarb**: See GitHub repo on browser
- **Nerdtree-git-plugin**: See git info on Nerdtree


### Keybindings
#### General use

| Shortcut                                      | Action                              |
| --------------------                          | ----------------------------------- |
| <kbd>Space</kbd>                              | Leader Key                          |
| <kbd>Tab</kbd>                                | Change between opened buffers       |
| <kbd>Ctrl</kbd>+<kbd>t</kbd>                  | Open terminal                       |
| <kbd>Space </kbd>+<kbd>s</kbd>                | Save buffer                         |
| <kbd>Space</kbd>+<kbd>q</kbd>                 | Quit neovim                         |
| <kbd>Alt</kbd>+<kbd>h</kbd>                   | Go to left panel                    |
| <kbd>Alt</kbd>+<kbd>j</kbd>                   | Go to bottom panel                  |
| <kbd>Alt</kbd>+<kbd>k</kbd>                   | Go to top panel                     |
| <kbd>Alt</kbd>+<kbd>l</kbd>                   | Go to right panel                   |




##### Plugins
| Shortcut                                      | Action                              |
| --------------------                          | ----------------------------------- |
| <kbd>Space</kbd>+<kbd>b</kbd>                 | Toggle NerdTree                     |
| <kbd>Space</kbd>+<kbd>p</kbd>                 | Fzf search                          |
| <kbd>Tab</kbd>                                | Navigate between options on coc     |













## Terminal utilities
### Fish
Install fish:

```
sudo pacman -S fish curl
```

And install omf to handle plugins and themes:

```
curl -L https://get.oh-my.fish | fish
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

For Fish:

```
omf install https://github.com/wfxr/forgit
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
Install plugins:

```
omf install z
omf install https://github.com/wfxr/forgit
```

Install themes:

```
omf install pure
omf install spacefish
```

# Alacritty
To change a theme run:

```
cd .config/alacritty
./theme.py dracula
```
