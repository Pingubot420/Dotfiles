#!/bin/bash

## brief overview of the script
## 1. Install needed packages and dependencies + AUR helper if not present
## 2. Make default directories and copy config files there

## update system before installation
echo -e "updating system..."
sudo pacman -Sy --noconfirm archlinux-keyring
sudo pacman --noconfirm -Syyuu
sudo pacman -S --noconfirm --needed base-devel wget git curl

## installing yay if not already present
echo -e "Checking Aur helper..."
if ! command -v "yay" &> /dev/null
then echo -e  "yay not installed, installing yay..."
git clone https://aur.archlinux.org/yay.git $HOME/.srcs/yay
(cd $HOME/.srcs/"$aurhelper"/ && makepkg -si)
else 
echo -e "yay already installed, skipping..." 

## installing packages
echo -e "Installing packman packages..."
sudo pacman --noconfirm --needed -S i3-gaps xorg firefox kitty fish neofetch feh code polybar picom discord thunar kvantum-manager rofi nomacs

echo -e "Installing AUR packages..."
yay --noconfirm --needed -S i3lock-colour betterdiscordctl noisetorch 

## moving config files to ~/.config
echo -e "Copying config files..."
cp -r $HOME/Dotfiles/config/wm-specific/i3-gaps/ $HOME/.config
cp -r $HOME/Dotfiles/config/non-specific/ $HOME/.config
