#!/bin/bash
#RUN this after installing base Debian with no GUI and install git
#Made by @citz_id
username=$(id -u -n 1000)

##########################################################################
##zsh & oh-my-zsh (optional)
#ZSH Install
cd /home/$username

yes | sudo pacman -S zsh

##Oh My Zsh Install
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cd /home/$username/.oh-my-zsh/custom/plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
git clone https://github.com/zsh-users/zsh-autosuggestions.git
git clone https://github.com/zsh-users/zsh-history-substring-search

cd home/$username/.oh-my-zsh
git clone https://github.com/reobin/typewritten.git

sudo cp -R /home/$username/arch/bspwm/home/zshrc /home/$username/.zshrc

chsh -s $(which zsh)


