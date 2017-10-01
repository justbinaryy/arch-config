exec i3

setterm -blank 0 -powersave off -powerdown 0
xset s off

xfce4-power-manager

pgrep redshift &> /dev/null || redshift &> /dev/null &
