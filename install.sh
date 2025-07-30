#!/bin/bash
#Run this script after our Arch Linux installation is complete.
#Install git first before running this script:
sudo pacman -Sy
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

#Enable services
sudo systemctl enable opensnitchd
sudo systemctl start opensnitchd
systemctl --user start libvirtd.sock
systemctl --user enable libvirtd.sock

#Prevent prompt authentication virt-manager
sudo usermod -a -G libvirt $USER

#Enables or disables the automatic startup of a persistent virtual network by the libvirt daemon
sudo virsh net-autostart default
sudo virsh net-start default

#Remote add flathub verified
flatpak remote-add --if-not-exists --subset=verified flathub-verified https://flathub.org/repo/flathub.flatpakrepo

#Install yay aur
cd $HOME
sudo pacman -S base-devel --noconfirm --needed
git clone https://aur.archlinux.org/yay.git
cd $HOME/yay
makepkg -si
cd $HOME/.dotfiles

#Install flatpaks from flathub-verified:
flatpak install flathub-verified org.inkscape.Inkscape -y
flatpak install flathub-verified com.discordapp.Discord -y
flatpak install flathub-verified com.github.tchx84.Flatseal -y
flatpak install flathub-verified com.obsproject.Studio -y


#Install oh-my-zsh (Do this as last step to avoid conflicts because shell is set to zsh automatically)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#Create symlinks with stow by running $HOME/.dotfiles/stow.sh from current directory
./stow.sh
