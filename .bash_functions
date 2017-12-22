function sudos { echo " " | sudo -S $1 ;}
export -f sudos

function csf() {
cd "/home/$USER/vagrant-web-server/sites";
ls;
echo "Site:";
read -e cdname;
cd "/home/$USER/vagrant-web-server/sites/$cdname/web";}
export -f csf
#модификация ls(напотом)
#ls | sed -r "$(find -maxdepth 1 -type d | cut -d/ -f2 | sed "1 d; 2~1 { s:.*:s/^\\(&\\)$/[+]\\\\1/;:g}")"

function site {
cd "/home/$USER/Sites/";
ls;
echo "Site:";
read -e cdname;
cd "/home/$USER/Sites/$cdname";}
export -f site

#функция для симлинков+регексп для имени папки до точки
