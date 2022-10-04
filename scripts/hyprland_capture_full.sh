output=$(cat /tmp/hypr/$HYPRLAND_INSTANCE_SIGNATURE/active_monitor_2) && grim -o $output "$HOME/screenshots/$time.png" && grim -o $output - | wl-copy
