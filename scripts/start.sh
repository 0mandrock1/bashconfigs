#!/bin/sh
sudo -s

sudo apt update
sudo apt upgrade

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
wget -O - https://swupdate.openvpn.net/repos/repo-public.gpg | apt-key add -

echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
echo "deb http://build.openvpn.net/debian/openvpn/2.4 xenial main" >/etc/apt/sources.list.d/openvpn-aptrepo.list

sudo apt update

sudo apt-get install apt-transport-https curl openvpn network-manager-openvpn-gnome ssh curl
# gem install gist

sudo apt install tilda sublime-text

cd $HOME/.ssh && wget 'https://gist.githubusercontent.com/0mandrock1/0a29d621a3e2d8aa9dea366c4fa95c7e/raw/62db72786778a3944c5194b4780ab7ef319c5b70/id_rsa' && wget 'https://gist.githubusercontent.com/0mandrock1/0a29d621a3e2d8aa9dea366c4fa95c7e/raw/62db72786778a3944c5194b4780ab7ef319c5b70/id_rsa.pub'

sudo chmod 600 ~/.ssh/id_rsa
sudo chmod 600 ~/.ssh/id_rsa.pub
