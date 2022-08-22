#!/bin/bash
# RUN this after installing base Debian with no GUI and install git
# Made by @citz_id
# BSPWM INSTALLER ARCH


cd bspwm/sh
chmod +x *

##################################################################################
##INSTALL DEPENDENCIES
echo -e "\e[1;36m Installing dependencies.sh \e[0m"
./dependencies.sh
echo -e "\e[1;42m Your Dependencies Installed \e[0m"


##################################################################################
##INSTALL PACKAGES
echo -e "\e[1;36m Installing pkg.sh \e[0m"
./pkg.sh
echo -e "\e[1;42m Your Packages Installed \e[0m"


##################################################################################
##INSTALL TERMINAL EMULATOR
echo -e "\e[1;36m Installing ALACRITTY \e[0m"
./alacritty.sh
echo -e "\e[1;42m Alacritty installed \e[0m"


##################################################################################
##INSTALL WINDOW MANAGER
echo -e "\e[1;36m Installing BSPWM \e[0m"
./bspwm.sh
echo -e "\e[1;42m Window Manager Installed \e[0m"


##################################################################################
##INSTALL PANEL/BAR
echo -e "\e[1;36m Installing POLYBAR \e[0m"
./polybar.sh
echo -e "\e[1;42m Polybar installed \e[0m"

##################################################################################
##INSTALL MENU LAUNCHER
echo -e "\e[1;36m Installing ROFI \e[0m"
./rofi.sh
echo -e "\e[1;42m Rofi installed \e[0m"

##################################################################################
##INSTALL RESOURCES GIT
echo -e "\e[1;36m Installing RESOURCES\e[0m"
./resources.sh
echo -e "\e[1;42m Your resources installed \e[0m"

##################################################################################
##INSTALL DISPLAY MANAGER
echo -e "\e[1;36m Installing SDDM \e[0m"
./sddm.sh
echo -e "\e[1;42m Display Manager Installed \e[0m"
cd ..

##NOTE##
# i comment the rest script because not run normally. you can install manual.
# you can open and edit _resource.sh_ to use you own resource git.

