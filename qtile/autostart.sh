#!/usr/bin/env bash 

_ps=(picom dunst ksuperkey mpd xfce-polkit xfce4-power-manager)
for _prs in "${_ps[@]}"; do
	if [[ `pidof ${_prs}` ]]; then
		killall -9 ${_prs}
	fi
done

picom &
/usr/lib/xfce-polkit/xfce-polkit &
numlockx &


### UNCOMMENT ONLY ONE OF THE FOLLOWING THREE OPTIONS! ###
# 1. Uncomment to restore last saved wallpaper
hsetroot -cover /home/soham/.config/qtile/wall/g.jpg
# 2. Uncomment to set a random wallpaper on login
# find /usr/share/backgrounds/dtos-backgrounds/ -type f | shuf -n 1 | xargs xwallpaper --stretch &
# 3. Uncomment to set wallpaper with nitrogen
# nitrogen --restore &

xsetroot -cursor_name left_ptr &
xbacklight -set 100% &
~/.config/conky/Mesarthim/start.sh



~/.config/bin/launch.sh
~/.config/qtile/bin/comp.sh
~/.config/qtile/bin/dunst.sh
~/.config/qtile/bin/screenshot.sh
