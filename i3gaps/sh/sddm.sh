#!/bin/bash
#RUN this after installing base Debian with no GUI and install git
#Made by @citz_id

sudo pacman -S install -y sddm
sudo systemctl enable sddm

chown $username:$username /home/$username/
chown $username:$username /home/$username/.config/*
xdg-user-dirs-update

printf "\e[1;32mMade by @citz_id : Done!! please reboot.Type 'sudo reboot' enter.\e[0m\n"