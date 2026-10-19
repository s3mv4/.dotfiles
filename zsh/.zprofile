# if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
#   exec startx
# fi
if [ -z "$WAYLAND_DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
  exec sh -c "dwmblocks -p | dwl -s ~/.config/dwl/startup.sh"
fi
