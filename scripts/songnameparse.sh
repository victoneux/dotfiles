input=($(playerctl metadata --format '{{xesam:artist}} // {{xesam:title}}'))
toshow=""
for word in "${input[@]}"; do
	temp=$toshow$word
	if [ ${#temp} -lt 60 ]; then
		toshow=$temp" "
	else
		toshow+="..."
		break
	fi
done
echo $toshow
