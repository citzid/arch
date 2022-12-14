#!/bin/bash
#RUN this after installing base Debian with no GUI and install git
#Made by @citz_id
username=$(id -u -n 1000)


############################Install BSPWM Window Manager##########################
##################################################################################

##################################################################################
##Install Dependencies##
#sudo pacman -S -y gcc g++ make cmake xcb pkg-config python3 libfreetype6-dev
#sudo pacman -S -y libxcb-util0-dev libxcb-ewmh-dev libxcb-randr0-dev
#sudo pacman -S -y libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev
#sudo pacman -S -y libxcb-icccm4-dev libxcb-keysyms1-dev libxcb-xinerama0-dev
#sudo pacman -S -y libasound2-dev libxcb-xtest0-dev libxcb-shape0-dev xorg 

##################################################################################
## Install bspwm sxhkd ##
git clone https://github.com/baskerville/bspwm.git
git clone https://github.com/baskerville/sxhkd.git
git clone https://github.com/baskerville/xdo

cd sxhkd && make && sudo make install
cd ../bspwm && make && sudo make install
cd ../xdo && make && sudo make install

yes | sudo pacman -S bspwm sxhkd

##################################################################################
## Configuration ##
#mkdir -p /home/$username/.config/{bspwm,sxhkd}

## Copy Template configuration ##
#cd /home/$username/arch/bspwm/sh
#cp bspwmrc /home/$username/.config/bspwm/
#cp sxhkdrc /home/$username/.config/sxhkd/
#cp .xinitrc /home/$username/

## move original config example for backup ##
#cp /usr/share/doc/bspwm/examples/bspwmrc /home/$username/.config/bspwm/bspwmrc.bak
#cp /usr/share/doc/bspwm/examples/sxhkdrc /home/$username/.config/sxhkd/sxhkdrc.bak


