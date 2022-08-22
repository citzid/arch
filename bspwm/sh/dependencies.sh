#!/bin/bash
#RUN this after installing base Debian with no GUI and install git
#Made by @citz_id
username=$(id -u -n 1000)
mkdir -p home/$username/.config

##################################################################################
timedatectl set-ntp true
sudo pacman -Syyu

## Display manager
sudo pacman -S sddm
sudo systemctl enable sddm



## DEPENDENCIES
sudo pacman -S base-devel git --needed cargo meson intel-vulkan xf86-video-intel
sudo pacman -S unzip unrar tar ranger conky htop neofetch

## AUDIO
sudo pacman -S pulseaudio pulseaudio-alsa alsa-utils pavucontrol

#mpd
mkdir -p home/$username/.config/mpd
yay -Sy mpd ncmpc mpc gmpc glurp
sudo cp -R /etc/mpd.conf /home/$username/.config/mpd/mpd.conf
chmod +x /home/$username/.config/mpd/mpd.conf
/etc/rc.d/mpd create-db
/etc/rc.d/mpd start

pacman -Sy ncmpc mpc gmpc glurp

## Installing Codecs and plugins
sudo pacman -S libvorbis libxv wavpack x264 xvidcore
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
sudo pacman -S linux-firmware
sudo grub-mkconfig -o /boot/grub/grub.cfg


## Activate user-level units
#Start & enable both user-level services:
sudo pacman -S pipewire pipewire-pulse 

systemctl --user enable pipewire.service
systemctl --user start pipewire.service

systemctl --user enable pipewire-pulse.service
systemctl --user start pipewire-pulse.service


## Activate MTP uSB devices
sudo pacman -S mtpfs -y
cd home/$username/Downloads
git clone https://aur.archlinux.org/jmtpfs.git
cd jmtpfs
makepkg -s
sudo pacman -U jmtpfs-0.5-3-x86_64.pkg.tar.zst
sudo pacman -Sy gvfs-mtp -y
sudo pacman -Sy gvfs-gphoto2 -y

