# ~/.bashrc ejecutado por /usr/bin/bash

########################                                       
# Editado por ~ferorge #                                       
########################
## Configura guix
GUIX_PROFILE="$HOME/.guix-profile"
. "$GUIX_PROFILE/etc/profile"

## Carga los alias
test -s ~/.alias && . ~/.alias || true
########################
