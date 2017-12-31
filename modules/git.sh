#!/bin/bash
alias gstatus='git status'

gcommit() {
  git commit -m "'$1'"
}

minorupdate() {
  git add -A
  git commit -m 'minor updates'
  git push
}

confupdate() {
  while getopts "bs" opt; do
    case $opt in
    b) cd $BASHCONFIGS || exit ;;
    s) cd ~/.config/Code/User/snippets || exit ;;
    esac
    if [[ $opt == $1 ]]; then
      shift
    fi
  done
  case $1 in
  pull) git pull
    ;;
  push) minorupdate
    ;;
  *) git status
    ;;
  esac
}
