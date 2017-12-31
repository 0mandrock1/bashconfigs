#!/bin/bash
aptinstall() {
  package=$1
  sudos "apt install $package -fy"
}
alias aptupdate="sudos 'apt update'"
alias aptupgrade="aptupdate&&sudos 'apt upgrade'"
alias aptremove="sudos 'apt autoremove -y'"
