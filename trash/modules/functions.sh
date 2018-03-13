csf() {
    cd "/home/$USER/vagrant-web-server/sites"
    ls
    echo "Site:"
    read -e cdname
    cd "/home/$USER/vagrant-web-server/sites/$cdname/web"
}
#функция для симлинков+регексп для имени папки до точки
