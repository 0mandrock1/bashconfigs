#!/bin/bash
PS3='Please enter your choice: '
options=("functions" "aliases" "profile" "sources")
select opt in "${options[@]}"; do
  path=/home/$USER/.config/bashconfigs/.bash_$opt
  break
done
read input
echo $input >>$path
