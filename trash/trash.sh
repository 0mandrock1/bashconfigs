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

if ( defined( 'WP_CLI' ) && WP_CLI && ! isset( $_SERVER['HTTP_HOST'] ) ) {
    $_SERVER['HTTP_HOST'] = 'uilib.vagrant.devtestnet.com';
}

define('WP_HOME', 'http://'.$_SERVER['HTTP_HOST']);
define('WP_SITEURL', 'http://'.$_SERVER['HTTP_HOST']);
define( 'WP_DEBUG', true );

#модификация ls
#ls | sed -r "$(find -maxdepth 1 -type d | cut -d/ -f2 | sed "1 d; 2~1 { s:.*:s/^\\(&\\)$/[+]\\\\1/;:g}")"

# alias blankwp='sudo rm -rf web&&git clone git@gitlab.com:0mandrock1/wp-blank.git web'
