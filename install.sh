#!/bin/bash

#Run this script after our Arch Linux installation is complete.
#Install git first before running this script:
sudo pacman -S --noconfirm git


DOTFILESREPO="https://github.com/Z3r0xF/.dotfiles"
EXECUTIONDIR=$(pwd)
#Clone dotfiles repo in $HOME
git clone $DOTFILESREPO $HOME/.dotfiles


# Install dotfiles
cd $HOME/.dotfiles

#If packages file exists in EXECUTIONDIR then use it
if [ -f $EXECUTIONDIR/packages ]; then
    PACKAGES_FILE=$EXECUTIONDIR/packages
else
    PACKAGES_FILE=$HOME/.dotfiles/packages
fi

# Read packages file and install them
cat $PACKAGES_FILE | xargs sudo pacman -S --noconfirm

#Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#Create symlinks with stow by running $HOME/.dotfiles/stow.sh from current directory
./stow.sh


#Enable services
sudo systemctl enable opensnitchd
sudo systemctl start opensnitchd