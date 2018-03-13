#!/bin/bash
PS3='Please enter your choice: '
options=("git" "apt" "new")
select opt in "${options[@]}"; do
  path=/home/$USER/.config/bashconfigs/modules/$opt.sh
  break
done
read input
echo $input >>$path
