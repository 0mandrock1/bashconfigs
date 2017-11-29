function sudos { echo " " | sudo -S $1 ;}
export -f sudos

function csf() {
cd "/home/$USER/vagrant-web-server/sites";
ls;
echo "Site:";
read -e cdname;
cd "/home/$USER/vagrant-web-server/sites/$cdname/web";}
export -f csf

function site {
cd "/home/$USER/Sites/";
ls;
echo "Site:";
read -e cdname;
cd "/home/$USER/Sites/$cdname";}
export -f site

#функция для симлинков+регексп для имени папки до точки

