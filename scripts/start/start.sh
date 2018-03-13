#!/bin/sh
sudo -s

sudo apt update
sudo apt upgrade

sudo apt install clipit guake git ssh xclip

git clone https://github.com/0mandrock1/bashconfigs ~/.config/

echo "source ~/.config/bashconfigs/.bash_sources" >> ~/.bashrc
