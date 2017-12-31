#!/bin/bash
sudos() {
    echo " " | sudo -S $1;
}

csf() {
    cd "/home/$USER/vagrant-web-server/sites"
    ls
    echo "Site:"
    read -e cdname
    cd "/home/$USER/vagrant-web-server/sites/$cdname/web"
}

echoin() {
    path=$2
    input=$1
    echo $input >>$path
}

chmodx() {
    chmod a+x $1
}

#функция для симлинков+регексп для имени папки до точки
