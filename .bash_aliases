
alias bashconfigure='code ~/.config/bashconfigs'
alias bashconfigs='cd ~/.config/bashconfigs'
alias aptupdate='sudo apt update'
alias aptupgrade='sudo apt upgrade -y'
alias aptup='sudo apt update&&sudo apt upgrade -y'
alias aptremove='sudo apt autoremove -y'
alias zaborona_fix="sudo sed -i '/dns=dnsmasq/c\#dns=dnsmasq' /etc/NetworkManager/NetworkManager.conf && sudo service network-manager restart"