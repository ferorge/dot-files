# ~/.bashrc ejecutado por /usr/bin/bash

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

########################
