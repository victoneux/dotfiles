output=$(amixer sget Master | grep 'Front Left:')
volume=$(echo $output | awk -F'[][]' '{print $2}')

echo ${volume/%?/}