# Generate an optimised mirrorlist.
sudo pacman-mirrors --fasttrack

# Synchronize packages, Download a fresh copy of the master package database & Upgrade all packages that are out of date.
sudo pacman -Syu

# Install timeshift
sudo pacman -S timeshift

# Backup System
timeshift --create --comments "stock manjaro" --yes

# Install fish shell.
sudo pacman -S fish

# Set login shell to fish shell.
chsh -s `which fish`

# Prerequisite for neovim 
sudo pacman -S nodejs; pip install neovim

# Install Neovim 
sudo pacman -S neovim

# Create directory "~/.config/nvim" for neovim config files.
cd ~/.config; mkdir nvim

# Copy "init.vim" into "~/.config/nvim/" from gitlab repo.
cd ~/.config/nvim; wget "https://gitlab.com/sousich/neovim/-/blob/main/init.vim"

# Create directory "~/.config/nvim/undodir" for neovim undo files.
mkdir undodir; cd ~
 
# Run following commands to setup neovim as per "init.vim".
nvim -c ':source ~/.config/nvim/init.vim'
nvim -c ':PlugClean'
nvim -c ':PlugInstall'

# Install Essential Apps
sudo pacman -S viewnior pantheon-calculator vlc okular firefox brave qbittorrent bitwarden megasync 

# Install Non Essential Apps
sudo pacman -S mypaint audacity kdenlive handbrake peek simplescreenrecorder onlyoffice

# Setup keyboard Shortcuts 
cd ~/.config/xfce4/xfconf/xfce-perchannel-xml; rm xfce4-keyboard-shortcuts.xml; wget "https://gitlab.com/sousich/neovim/-/blob/main/init.vim"














