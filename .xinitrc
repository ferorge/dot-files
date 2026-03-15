# ~/.xinitrc ejecutado por startx

########################
# Editado por ~ferorge #
########################
## Carga la configuración
xrdb ~/.Xdefaults
xrdb ~/.Xresources

## Ejecuta dbus
### Ya es ejecutado por systemd para utilizar bluetooth
#if [ -z "$DBUS_SESSION_BUS_ADDRESS" ]; then
#    eval $(dbus-launch --sh-syntax --exit-with-session)
#fi

## Ejecuta el compositor para evitar tearing
`which xcompmgr` -sfFn &

## Ejecuta el gestor de notificaciones
/usr/lib/notification-daemon/notification-daemon &

## Ejecuta el protector de pantalla
`which xscreensaver` &

## Ejecuta el fondo de escritorio
`which xwallpaper` --maximize ~/wallpaper.jpg &

## Distribucion de teclado en /usr/share/X11/xkb/symbols/us
`which setxkbmap` -model "$XKBMODEL" -layout "$XKBLAYOUT" -variant "$XKBVARIANT" -option "$XKBOPTIONS" &

## ratmenu
alias ratmenu='ratmenu -label "Apps" "Terminal" "xterm" "Navegador" "abrowser"'

## Ejecuta el gestor de ventanas
exec `which ratpoison`
########################

