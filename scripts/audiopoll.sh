playerinput=($(playerctl metadata --format '{{xesam:artist}} // {{xesam:title}}'))
output=$(amixer sget Master | grep 'Front Left:')
ismuted=$(echo $output | awk -F ' ' '{print $6}')
volume=$(echo $output | awk -F'[][]' '{print $2}')

if [ $ismuted = "[on]" ]; then
	toshow="󰕾 "$volume
else
	toshow=" "$volume
fi

musicinfo=""

for word in "${playerinput[@]}"; do
	temp=$musicinfo$word
	if [ ${#temp} -lt 30 ]; then
		musicinfo=$musicinfo" "$word
	else
		musicinfo+="..."
		break
	fi
done

if [ $musicinfo="" ]; then
	echo $toshow
else
	echo $toshow" || "$musicinfo
fi
