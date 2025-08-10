# ~/.profile: ejecutado por el intérpretes de comandos de inicio de sesión.

########################
# Editado por ~ferorge #
########################

## Configura guix
GUIX_PROFILE="$HOME/.guix-profile"
. "$GUIX_PROFILE/etc/profile"

## Carga los alias
test -s ~/.alias && . ~/.alias || true

## Configura la fuente y su tamaño

if [[ $GPG_TTY =~ "tty" ]]; then
    setfont /usr/share/kbd/consolefonts/Lat2-Terminus20x10.psf.gz
fi

## Lenguaje del sistema
export LANG="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

## Zona horaria
export TZ="UTC-3"

## Editor predeterminado
export EDITOR="/usr/bin/emacs"

## Emulador de terminal predeterminado
export TERMINAL="/usr/bin/xterm"

## Paginador predeterminado
export PAGER="/usr/bin/less"

## Inicia X mediante .xinitrc
startx
########################
