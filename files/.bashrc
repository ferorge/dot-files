# ~/.bashrc ejecutado por /usr/bin/bash

## Establece el prompt según la distribución.
color_prompt=yes
if [ "$color_prompt" = yes ]; then
    case $(uname) in
	Linux)
            OS=$(grep ^"NAME" /etc/os-release)
            case $OS in
        	*openSUSE*)
        	    PS1='\[\033[01;32m\]\$\[\033[00m\] '
        	    ;;
        	*Ubuntu*)
        	    PS1='\[\033[01;35m\]\$\[\033[00m\] '
        	    ;;
        	*)
        	    PS1='\$ '
        	    ;;
            esac
	    ;;
	OpenBSD)
	    PS1='\[\033[01;33m\]\$\[\033[00m\] '
	    ;;
	*)
	    PS1='\$ '
	    ;;
    esac
else
    PS1='\$ '
fi
