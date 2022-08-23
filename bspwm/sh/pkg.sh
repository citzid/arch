#!/bin/bash
#RUN this after installing base Debian with no GUI and install git
#Made by @citz_id
username=$(id -u -n 1000)
mkdir -p home/$username/.config

##################################################################################
##Install terminal emulator

sudo pacman -S -y kitty
#sudo pacman -S -y terminator
#sudo pacman -S -y urxvt


##################################################################################
##Install browser
sudo pacman -S -y firefox-esr
#sudo pacman -S -y chromium

## BRAVE BROWSER INSTALL
#sudo pacman -S software-properties-common apt-transport-https wget ca-certificates gnupg2 -y
#wget -O- https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg | sudo gpg --dearmor | sudo tee /usr/share/keyrings/brave-browser-archive-keyring.gpg
#echo deb [arch=amd64 signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
#sudo pacman -Syu
#sudo pacman -S install brave-browser -y
#yay -S brave-bin

##################################################################################
##Install file manager

sudo pacman -S -y thunar
#sudo pacman -S -y pcmanfm
#sudo pacman -S -y nautilus
#sudo pacman -S -y dolphin



##################################################################################
##Install Launcher

sudo pacman -S -y rofi
#sudo pacman -S -y wofi
#sudo pacman -S -y dmenu


##################################################################################
##Install editor

sudo pacman -S -y geany
sudo pacman -S -y vim
#sudo pacman -S -y neovim

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

sudo pacman -S -y nitrogen
sudo pacman -S -y feh
#sudo pacman -S -y variety

## Install GNOME SCREENSHOT TOOLS
sudo sudo pacman -S -y shutter

##################################################################################
##Install theme setting
sudo pacman -S -y lxappearance

## Download Nordic Theme
cd /usr/share/themes/
git clone https://github.com/EliverLara/Nordic.git
cd /home/$username/arch/pkg
tar xvzf /home/$username/arch/pkg/Kripton-v40.tar.xz
mv /home/$username/arch/pkg/Kripton-v40 /usr/share/themes/

cd /home/$username/arch/sh

## Install font Fura Code Nerd Font variant needed
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v1.1.0/FiraCode.zip
unzip FiraCode.zip -d /usr/share/fonts
#wget https://github.com/ryanoasis/nerd-fonts/releases/download/v1.1.0/Meslo.zip
#unzip Meslo.zip -d /usr/share/fonts
fc-cache -vf


