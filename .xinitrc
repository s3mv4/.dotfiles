#!/bin/sh
setxkbmap -layout us -variant dvp &
xset r rate 330 50 &
~/.fehbg &
picom &
dwmblocks &
while true; do
    dwm >/dev/null 2>&1
done
