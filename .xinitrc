#!/bin/sh
setxkbmap us dvp &
xset r rate 200 30 &
xset b off &
xrandr --output DP-1 --auto --left-of eDP-1 --auto &
bing-wallpaper &
picom &
redshift &
dwmblocks &
while true; do
    dwm >/dev/null 2>&1
done
