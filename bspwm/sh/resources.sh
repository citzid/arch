#!/bin/bash
#RUN this after installing base Debian with no GUI and install git
#Made by @citz_id
username=$(id -u -n 1000)


##################################################################################
## Clone my resources file (if you have own resources, you can edit this) ##
git clone https://github.com/citzid/bg.git
git clone https://github.com/citzid/fonts.git
git clone https://github.com/citzid/icons.git
git clone https://github.com/citzid/grubthemes.git

##################################################################################
cd 
#Create folders in user directory (eg. Documents,Downloads,etc.)#
cd /home/$username
mkdir -p Documents Downloads Music Pictures Videos

##################################################################################
# Create config firectory
cd /home/$username/arch/sh

## Copy resources file
cp -R bg /home/$username/.config
cp -R fonts /home/$username/.config
cp -R icons /home/$username/.config
cp -R grubthemes /home/$username/.config

cd /home/$username/.config/icons
tar xvzf /home/$username/.config/icons/volantes_light_cursors.tar.gz -C ~/.local/share/icons/theme/cursors
#mv /home/$username/.config/icons/volantes_light_cursors /.local/share/icons/
