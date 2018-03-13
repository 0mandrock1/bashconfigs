#!/bin/bash

#execute with sudo(if pass equals "space")
sudos() {
    echo " " | sudo -S $1;
}

#добавляет текст к файлу, находящемуся по $1
echoin() {
    path=$1
    read input
    echo $input >>$path
}

#marks file as executable
chmodx() {
    chmod a+x $1
}

