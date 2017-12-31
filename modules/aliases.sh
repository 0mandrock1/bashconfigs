#!/bin/bash
alias bashconfigure="code ~/.config/bashconfigs"

alias sites='cd $HOME/vagrant-web-server/sites/'
alias yoreevolive_deploy='rsync -zavP ~/vagrant-web-server/sites/yoreevo.vagrant.devtestnet.com_web29/web/wp-content/themes/yoreevo/assets/ u90908181@home703468421.1and1-data.host:~/repo/wp-content/themes/yoreevo/assets/'

#jquery in console
jqueryinconsole_text="var jq = document.createElement('script'); jq.src ='https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js'; document.getElementsByTagName('head')[0].appendChild(jq); jQuery.noConflict();
"
alias jqueryinconsole='xdotool type "'$jqueryinconsole_text'"'
