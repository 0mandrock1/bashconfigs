alias blankwp='sudo rm -rf web&&git clone git@gitlab.com:0mandrock1/wp-blank.git web'
alias sites='cd /home/markm/vagrant-web-server/sites/'

alias yoreevolive_deploy='rsync -zavP ~/vagrant-web-server/sites/yoreevo.vagrant.devtestnet.com_web29/web/wp-content/themes/yoreevo/assets/ u90908181@home703468421.1and1-data.host:~/repo/wp-content/themes/yoreevo/assets/'

source ~/.config/wp-cli/wp-completion.bash
export PS1="\\w\$(__git_ps1 '(%s)') \$ "

#git helpers
function gcommit { git commit -m "'$1'"; }
alias gstatus='git status'

export -f gcommit

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
. /home/markm/.config/rails/completion-ruby-all
    