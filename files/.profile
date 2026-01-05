# ~/.profile: ejecutado por el intérpretes de comandos de inicio de sesión, si y solo si no existen:
## ~/.bash_profile.
## ~/.bash_login.
echo .profile

########################
# Editado por ~ferorge #
########################

## Colores
export RESET="\e[0m"
export BLACK="\e[30m"
export RED="\e[31m"
export GREEN="\e[32m"
export YELLOW="\e[33m"
export BLUE="\e[34m"
export MAGENTA="\e[35m"
export CYAN="\e[36m"
export GRAY="\e[37m"
export DEFAULT="\e[39m"

## Configura perfil de guix
GUIX_PROFILE="$HOME/.guix-profile"
test -s $GUIX_PROFILE/etc/profile && . "$GUIX_PROFILE/etc/profile" || true

## Configura la fuente y tamaño para tty
if $(tty) | grep tty > /dev/null; then
    setfont $(locate Uni3-Terminus20x10)
fi

## Lenguaje del sistema
export LANG="es_ES.UTF-8"
export LC_CTYPE="es_ES.UTF-8"
export LC_ALL="es_ES.UTF-8"

## Zona horaria
if [[ $(uname) == "Linux" ]]; then
    export TZ='America/Argentina/Buenos_Aires'
else
    export TZ="UTC-3"
fi

## Servidor nntp
export NNTPSERVER="news.tildeverse.org"

## Editor predeterminado
export EDITOR=$(which emacs)

## Emulador de terminal predeterminado
export TERMINAL=$(which xterm)

## Paginador predeterminado
export PAGER=$(which less)

## Carga .bashrc si la shell es bash
if [[ $0 == '-bash' ]]; then
    . ~/.bashrc
fi

## Inicia X mediante .xinitrc
# startx
########################
