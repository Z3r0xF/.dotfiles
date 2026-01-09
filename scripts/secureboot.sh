#!/bin/bash

#Important! use -m otherwise your system can brick!
#Don't forget to add tpm module if you use VM
#Also make sure grub is installed correctly with grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB --modules="tpm" --disable-shim-lock

sudo sbctl verify
sudo sbctl create-keys
sudo sbctl enroll-keys -m
sudo sbctl sign -s /efi/EFI/GRUB/grubx64.efi
sudo sbctl sign -s /boot/vmlinuz-linux
sudo sbctl status
