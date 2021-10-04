#!/bin/bash

sudo apt install git make gcc
sudo apt update

sudo apt install kitty vim vifm sxiv dmenu lolcat fonts-hack-ttf
sudo apt install pavucontrol i3
sudo apt install pipewire-audio-client-libraries
sudo apt remove pulseaudio

sudo apt install nitrogen qutebrowser
sudo apt install xorg xinit

sudo dpkg --add-architecture i386
sudo apt update && sudo apt upgrade
sudo apt install gamemode gnome-boxes steam chromium  
sudo apt install nvidia-driver firmware-misc-nonfree

mkdir ~/git

cd ~/git && git clone https://github.com/dylanaraps/pfetch.git && cd ~/git/pfetch && sudo make install

cd ~/git && git clone --recurse-submodules https://github.com/flightlessmango/MangoHud.git  && cd ~/git/MangoHud && ./build.sh install && ./build.sh build

sudo mkdir /etc/default/grub
sudo mv ~/linuxconfig-debian/grub /etc/default/grub
sudo apt remove meson python-mako ninja



mkdir ~/.config/i3 && mkdir ~/.config/kitty
mv ~/linuxconfig-debian/pictures ~/git && mv ~/linuxconfig-debian/config ~/.config/i3/config && mv ~/linuxconfig-debian/kitty.conf ~/.config/kitty/kitty.conf
touch ~/.xinitrc && echo -e 'bash -c "nitrogen --restore" \nexec i3' >> ~/.xinitrc
echo -e 'set -g -x fish_greeting \nls -lah | lolcat' >> ~/.config/fish/config.fish
sudo systemctl daemon-reload
rm -r ~/linuxconfig-debian
sudo grub-mkconfig -o /boot/grub/grub.cfg
cd ~/git && git clone https://github.com/oh-my-fish/oh-my-fish && cd ~/git/oh-my-fish && bin/install --offline
