options=("Poweroff" "Reboot" "Lock")
selection=$(rofi -dmenu -theme power.rasi <<< $(printf '%s\n' "${options[@]}"))

case $selection in

    Poweroff)
        systemctl poweroff
        ;;
    Reboot)
        systemctl reboot
        ;;
    Lock)
        ~/.config/scripts/lock.sh
        ;;
esac

