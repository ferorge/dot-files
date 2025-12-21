# ~/.bashrc ejecutado por /usr/bin/bash
echo .bashrc

## Establece el prompt según la distribución.
if [ $(id -u) = 0 ]; then
    PS1='\[\033[01;31m\]\$\[\033[00m\] '
else
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
        	*Trisquel*)
        	    PS1='\[\033[00;34m\]\$\[\033[00m\] '
        	    ;;
        	*Guix*)
        	    PS1='\[\033[00;33m\]\$\[\033[00m\] '
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
fi

## Ejecuta screen
# Actualizar el título de la ventana con el directorio actual en cada prompt (añade esto a tu ~/.bashrc o ~/.zshrc)
if [[ "$TERM" =~ "screen" ]]; then
    PROMPT_COMMAND='echo -ne "\033k"${cmd%% *}"\033\\";echo -ne "\033k"$USER\@$HOSTNAME\:$PWD"\033\\"'
fi

if [ $(screen -ls | grep local | wc -l) -eq 0 ]; then
    screen -dmS local
fi

## Abre la sesión de screen solo si no es tty.
## El condicional es para que permite iniciar X.
if [[ $GPG_TTY =~ "pts" ]]; then
    screen -x local
fi
