# Setup a new arch based installation

# Update packages
sudo pacman -Syu

# Install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git $HOME/.fzf
$HOME/.fzf/install
rm $HOME/.fzf/ -dfr

# Install needed packages
sudo pacman -S yay --noconfirm
yay -S exa lazydocker docker docker-compose fish navi duf ncdu neofetch neovim btop zip unzip htop --noconfirm

# Add cheats to navi
navi repo add https://github.com/Tekofx/navi-cheats.git

# Configure fish
cp ../fish/ $HOME/.config/ -r
sh -c "$(curl -fsSL https://starship.rs/install.sh)"
chsh -s /usr/bin/fish