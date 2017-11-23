function aptinstall {
    sudo apt-get install $1 -y
} 

function d {
$1 & disown
}

export -f aptinstall
export -f d
