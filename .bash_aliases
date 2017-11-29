
alias bashconfigure='code ~/.config/bashconfigs'
alias bashconfigs='cd ~/.config/bashconfigs'

alias aptremove='sudo apt autoremove -y'

function aptinstall { echo " " | sudo -S apt-get install $1 -fy ;}
function aptupdate { echo " " | sudo -S apt-get update;}
function aptupgrade { echo " " | sudo -S apt-get update; echo " " | sudo -S apt-get upgrade; }
export -f aptinstall aptupdate aptupgrade

function chmodx { chmod a+x $1 ;}
export -f chmodx

function theme { cd wp-content/themes/$1 ;} 
export -f theme


alias blankwp='sudo rm -rf web&&git clone git@gitlab.com:0mandrock1/wp-blank.git web'
alias sites='cd /home/markm/vagrant-web-server/sites/'
alias yoreevolive_deploy='rsync -zavP ~/vagrant-web-server/sites/yoreevo.vagrant.devtestnet.com_web29/web/wp-content/themes/yoreevo/assets/ u90908181@home703468421.1and1-data.host:~/repo/wp-content/themes/yoreevo/assets/'


