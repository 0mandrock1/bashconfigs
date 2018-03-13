#jquery in console
jqueryinconsole_text="var jq = document.createElement('script'); jq.src ='https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js'; document.getElementsByTagName('head')[0].appendChild(jq); jQuery.noConflict();
"
alias jqueryinconsole='xdotool type "'$jqueryinconsole_text'"'
