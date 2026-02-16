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

while true; do
    # Memoria RAM: Extrae uso actual y total
    MEM=$(free -m | awk '/Mem:/ {print $3"MB/"$2"MB"}')
    
    # Batería: Extrae porcentaje y estado (Cargando/Descargando)
    BAT_PERC=$(cat /sys/class/power_supply/BAT0/capacity)
    BAT_STAT=$(cat /sys/class/power_supply/BAT0/status)
    
    # Fecha y Hora
    DATE=$(date +"%d/%m %H:%M")
    
    # Carga de CPU
    LOAD=$(cut -d " " -f1 /proc/loadavg)
    
    # Envío a la barra de ratpoison
    xsetroot -name " [RAM: $MEM] [BAT: $BAT_PERC% $BAT_STAT] [CPU: $LOAD] [$DATE] "
    
    sleep 1
done &


## Ejecuta el gestor de ventanas
exec `which ratpoison`
########################

