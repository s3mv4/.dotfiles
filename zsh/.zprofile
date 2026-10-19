if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
  # exec startx
  exec sh -c "dwmblocks -p | dwl -s ~/.config/dwl/startup.sh"
fi
