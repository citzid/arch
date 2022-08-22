#!/bin/bash
#RUN this after installing base Debian with no GUI and install git
#Made by @citz_id
username=$(id -u -n 1000)

sudo yay -S sddm
sudo systemctl enable sddm

cp -R /home/$username/arch/bspwm/home/xinitrc /home/$username/.xinitrc
cp -R /home/$username/arch/bspwm/home/zshrc /home/$username/.zshrc
cp -R /home/$username/arch/bspwm/home/bashrc /home/$username/.bashrc
cp -R /home/$username/arch/bspwm/config/* /home/$username/.config/

chown $username:$username /home/$username/
chown $username:$username /home/$username/.config/*
xdg-user-dirs-update
sudo chown -R $username:www-data ~/
#this line to fix gparted wont run
xhost +local:

printf "\e[1;32mMade by @citz_id : Done!! If Not Redirect Automaticaly To Login Page. Please reboot.Type 'sudo reboot' enter.\e[0m\n"
sleep 5s
sudo systemctl start sddm
