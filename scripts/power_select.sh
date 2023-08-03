options=("󰤆" "" "󰌾" "󰿅")
selection=$(rofi -dmenu -theme power.rasi <<< $(printf '%s\n' "${options[@]}"))

case $selection in

    󰤆)
        systemctl poweroff
        ;;
    )
        systemctl reboot
        ;;
    󰌾)
        ~/.config/scripts/lock.sh
        ;;
    󰿅)
        hyprctl kill
        ;;
esac

