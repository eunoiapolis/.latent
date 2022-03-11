#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi


# warp-cli connect &
xrandr --output eDP1 --auto --left-of DP1 &
~/.dwm/dscripts/wallpaperslideshow.sh &
/usr/bin/emacs --daemon &
blueman-applet &
aw-qt &
~/.dwm/dscripts/mapwacom-tomgalvin.sh -d "Wacom One by Wacom S Pen stylus" -d "Wacom One by Wacom S Pen eraser" -s "DP1" &

sleep 3 && discord &
sleep 4 && brave &
sleep 5 && notion-app-enhanced &
sleep 6 && brave --class=brave-aw --user-data-dir=$HOME/.config/bravedir/aw http://localhost:5600/#/activity/metalarc/view/ &
sleep 7 && microsoft-edge-dev &
sleep 8 && easyeffects &
#sleep 9 && spotify &

while true; do
	nm-applet &
	/usr/bin/dunst &
	picom --experimental-backends &
	pa-applet &
	exec i3
done
