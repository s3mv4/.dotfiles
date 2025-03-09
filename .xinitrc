#!/bin/sh
setxkbmap -layout us -variant dvp &
xset r rate 330 50 &
xrandr --output DP1 --auto --above eDP1 --auto &
~/.fehbg &
picom &
redshift &
dwmblocks &
while true; do
    dwm >/dev/null 2>&1
done
