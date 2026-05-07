#!/bin/sh
setxkbmap us dvp &
xset r rate 200 30 &
xset b off &
~/.xrandr &
~/.fehbg &
picom &
redshift &
dwmblocks &
while true; do
    dwm >/dev/null 2>&1
done
