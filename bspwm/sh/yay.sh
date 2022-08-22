#!/bin/bash
#RUN this after installing base Debian with no GUI and install git
#Made by @citz_id
username=$(id -u -n 1000)


##################################################################################
##Install Yay AUR Helper

#clone#
sudo git clone https://aur.archlinux.org/yay-git.git
sudo chown -R $username:$username ./yay-git
cd yay-git
makepkg -si
sudo yay -Sy