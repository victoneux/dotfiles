status=$(cat /sys/class/power_supply/BAT0/status)
percent=$(acpi | grep -o "[0-9]*%")

case $status in
    "Full")
        echo "󱟢 $percent"
        ;;
    "Charging")
        echo "󰂄 $percent"
        ;;
    "Discharging")
        echo "󱟤 $percent"
        ;;
    "Not charging")
        echo "󰁿 $percent"
        ;;
esac
