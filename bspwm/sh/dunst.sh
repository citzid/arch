#!/bin/bash
#RUN this after installing base Debian with no GUI and install git
#Made by @citz_id
username=$(id -u -n 1000)


##################################################################################
## Install Dunst Notification

git clone https://github.com/dunst-project/dunst.git
cd dunst
make -j5
sudo make install

sudo mkdir /home/$username/.config/dunst
sudo cp /home/$username/arch/bspwm/dunst/dunstrc /home/$username/.config/dunst/dunstrc
sudo chown $username:$username /home/$usernamer/.config/dunst/dunstrc