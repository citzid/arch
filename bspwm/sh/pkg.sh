#!/bin/bash
#RUN this after installing base Debian with no GUI and install git
#Made by @citz_id
username=$(id -u -n 1000)
mkdir -p home/$username/.config

##################################################################################
##Install terminal emulator

yes | sudo pacman -S -y kitty
#yes | sudo pacman -S -y terminator
#yes | sudo pacman -S -y urxvt


##################################################################################
##Install browser
yes | sudo pacman -S -y firefox-esr
#yes | sudo pacman -S -y chromium

## BRAVE BROWSER INSTALL
#yes | sudo pacman -S software-properties-common apt-transport-https wget ca-certificates gnupg2 -y
#wget -O- https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg | sudo gpg --dearmor | sudo tee /usr/share/keyrings/brave-browser-archive-keyring.gpg
#echo deb [arch=amd64 signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
#sudo pacman -Syu
#yes | sudo pacman -S install brave-browser
#yes | yay -S brave-bin

##################################################################################
##Install file manager

yes | sudo pacman -S thunar
#yes | sudo pacman -S pcmanfm
#yes | sudo pacman -S nautilus
#yes | sudo pacman -S dolphin



##################################################################################
##Install Launcher

yes | sudo pacman -S rofi
#yes | sudo pacman -S wofi
#yes | sudo pacman -S dmenu


##################################################################################
##Install editor

yes | sudo pacman -S geany
yes | sudo pacman -S vim
#yes | sudo pacman -S neovim

## VS-CODE
#sudo sudo pacman -S wget gpg
#wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
#sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
#sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
#rm -f packages.microsoft.gpg
#sudo pacman -S apt-transport-https
#sudo pacman -Sy
#sudo pacman -S code # or code-insiders



##################################################################################
##Install wallpaper manager

yes | sudo pacman -S nitrogen
yes | sudo pacman -S feh
#yes | sudo pacman -S variety

## Install GNOME SCREENSHOT TOOLS
yes | sudo sudo pacman -S shutter

##################################################################################
##Install theme setting
yes | sudo pacman -S lxappearance

## Download Nordic Theme
cd /usr/share/themes/
git clone https://github.com/EliverLara/Nordic.git
cd /home/$username/arch/pkg
tar xvzf /home/$username/arch/pkg/Kripton-v40.tar.gz
sudo mv /home/$username/arch/pkg/Kripton-v40 /usr/share/themes/

cd /home/$username/arch/sh

## Install font Fura Code Nerd Font variant needed
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v1.1.0/FiraCode.zip
unzip FiraCode.zip -d /usr/share/fonts
#wget https://github.com/ryanoasis/nerd-fonts/releases/download/v1.1.0/Meslo.zip
#unzip Meslo.zip -d /usr/share/fonts
fc-cache -vf


