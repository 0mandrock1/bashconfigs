#!/bin/bash
path=$2;
while getopts ":s:v" OPTION; do
    case "$OPTION" in
        s) input=$3 ;;
        v) if [ -z "$2" ]
           then
             echo 'Path:'; read path ; echo 'Input:'
           fi
           read input ;;
    esac
done
echo $input >> $path