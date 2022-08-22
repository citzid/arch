#!/bin/bash
#RUN this after installing base Debian with no GUI and install git
#Made by @citz_id
username=$(id -u -n 1000)
#mkdir -p home/$username/.config
cd home/$username


##################################################################################
timedatectl set-ntp true
sudo pacman -Syyu

## Display manager
#sudo pacman -S sddm
#sudo systemctl enable sddm



## DEPENDENCIES
sudo pacman -S base-devel git --needed cargo meson
sudo pacman -S unzip unrar tar ranger conky htop neofetch

## Installing Codecs and plugins
sudo pacman -S libvorbis libxv wavpack x264 xvidcore gstreamer0.10-plugins
sudo pacman -S a52dec faac faad2 flac jasper lame libdca libdv libmad libmpeg2 libtheora 

## Isntall Themes
sudo pacman -S numix-themes

# Install & enable firewall
sudo pacman -S ufw && sudo ufw enable

# Install Microcode
# INTEL
sudo pacman -S intel-ucode
sudo grub-mkconfig -o /boot/grub/grub.cfg

# AMD
#sudo pacman -S linux-firmware
#sudo grub-mkconfig -o /boot/grub/grub.cfg

#this line to fix gparted wont run
xhost +local: