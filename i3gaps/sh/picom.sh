#!/bin/bash
#RUN this after installing base Debian with no GUI and install git
#Made by @citz_id
username=$(id -u -n 1000)

##################################################################################
## Picom compositor install
git clone https://github.com/yshui/picom.git && cd picom
git submodule update --init --recursive
meson --buildtype=release . build
ninja -C build
sudo ninja -C build install

mkdir -p /home/$username/.config/picom
cp -R picom.conf cd /home/$username/.config/picom/


######################################EOF#########################################


