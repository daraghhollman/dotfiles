TOUCHPAD="synaptics-tm3149-002"

if [ -z "$XDG_RUNTIME_DIR" ]; then
  export XDG_RUNTIME_DIR=/run/user/$(id -u)
fi

export STATUS_FILE="$XDG_RUNTIME_DIR/touchpad.status"

enable_touchpad() {
  printf "true" > "$STATUS_FILE"

  notify-send -u normal "Enabling Touchpad"

  hyprctl keyword "device:$1:enabled" true
  hyprctl keyword general:cursor_inactive_timeout 0
}

disable_touchpad() {
  printf "false" > "$STATUS_FILE"

  notify-send -u normal "Disabling Touchpad"
  
  hyprctl keyword "device:$1:enabled" false
  hyprctl keyword general:cursor_inactive_timeout 1
}

if ! [ -f "$STATUS_FILE" ]; then
  enable_touchpad $TOUCHPAD
else
  if [ $(cat "$STATUS_FILE") = "true" ]; then
    disable_touchpad $TOUCHPAD
  elif [ $(cat "$STATUS_FILE") = "false" ]; then
    enable_touchpad $TOUCHPAD
  fi
fi
