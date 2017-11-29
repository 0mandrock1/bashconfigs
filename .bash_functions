function aptinstall { echo " " | sudo -S apt-get install $1 -fy ;}
function aptupdate { echo " " | sudo -S apt-get update;}


function d { $1 & disown; }

export -f aptinstall
export -f d


function in_bashrc { echo "$1" >> ~/.bashrc ; source ~/.bashrc; }



function in_config { echo "$1" >> ~/.config/$2/$3; }

function sudos { echo " " | sudo -S $0 ;}



#function to {
#getopts 'd:' opt;
#if $OPTARG 'profile'
#way='/home/markm/$1';    
# case $1 in
# profile)  way="$way.bash_profile" ;;
# rc) way="$way.bashrc" ;;
# esac
# echo "$2" >> $way ;
# while getopts "se" opt
# do
# case $opt in
# s) source $way ;;
# e) exit;;
# esac
# done
#}