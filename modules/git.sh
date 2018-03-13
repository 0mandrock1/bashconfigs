#!/bin/bash


#aliases
alias gstatus='git status'
gcommit() {
  git commit -m "'$1'"
}

#path(branch)
gitprompt() {
  GREEN="\[$(tput setaf 2)\]"
  BLUE="\[$(tput setaf 4)\]"
  RESET="\[$(tput sgr0)\]"
  export PS1="${BLUE}\\033[1m \w \033[0m${RESET}${GREEN}\$(__git_ps1 '(%s)')${RESET} \$  "
}

#update crutches
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
