#!/bin/bash
#RUN this after installing base Debian with no GUI and install git
#Made by @citz_id
username=$(id -u -n 1000)
mkdir -p home/$username/.config
mkdir -p /home/$username/.config/{bspwm,sxhkd}

##################################################################################
timedatectl set-ntp true
yes | sudo pacman -Syyu

## Display manager
yes | sudo pacman -S sddm
sudo systemctl enable sddm



## DEPENDENCIES
yes | sudo pacman -S base-devel git --needed cargo meson intel-vulkan xf86-video-intel
yes | sudo pacman -S unzip unrar tar ranger conky htop neofetch

## AUDIO
yes | sudo pacman -S pulseaudio pulseaudio-alsa alsa-utils pavucontrol

#mpd
mkdir -p home/$username/.config/mpd
yay -Sy mpd ncmpc mpc gmpc glurp
sudo cp -R /etc/mpd.conf /home/$username/.config/mpd/mpd.conf
chmod +x /home/$username/.config/mpd/mpd.conf
/etc/rc.d/mpd create-db
/etc/rc.d/mpd start

yes | sudo pacman -S ncmpc mpc gmpc glurp

## Installing Codecs and plugins
yes | sudo pacman -S libvorbis libxv wavpack x264 xvidcore
yes | sudo pacman -S a52dec faac faad2 flac jasper lame libdca libdv libmad libmpeg2 libtheora 

## Isntall Themes
yes | sudo pacman -S numix-themes

# Install & enable firewall
yes | sudo pacman -S ufw && sudo ufw enable

# Install Microcode
# INTEL
yes | sudo pacman -S intel-ucode
yes | sudo grub-mkconfig -o /boot/grub/grub.cfg

# AMD
yes | sudo pacman -S linux-firmware
yes | sudo grub-mkconfig -o /boot/grub/grub.cfg


## Activate user-level units
#Start & enable both user-level services:
yes | sudo pacman -S pipewire pipewire-pulse 

systemctl --user enable pipewire.service
systemctl --user start pipewire.service

systemctl --user enable pipewire-pulse.service
systemctl --user start pipewire-pulse.service


## Activate MTP uSB devices
yes | sudo pacman -S mtpfs
cd home/$username/Downloads
git clone https://aur.archlinux.org/jmtpfs.git
cd jmtpfs
makepkg -s
yes | sudo pacman -U jmtpfs-0.5-3-x86_64.pkg.tar.zst
yes | sudo pacman -Sy gvfs-mtp
yes | sudo pacman -Sy gvfs-gphoto2

