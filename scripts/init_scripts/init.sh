monitors=$(hyprctl monitors -j)

ids=$(echo $monitors | jq -r '.[].id')

id_count=0

for id in $ids; do
    current_workspace=$(echo $monitors | jq -r '.[] | select(.id == '$id').activeWorkspace.id' )

    if [ ${current_workspace:0:1} != $(($id+1)) ] || [ ${#current_workspace} -lt 2 ]; then
        hyprctl dispatch focusmonitor $id
        hyprctl dispatch workspace $((id+1))1
    fi

    id_count=$(($id_count+1))
done

$HOME/.config/scripts/init_scripts/eww.sh $id_count
$HOME/.config/scripts/init_scripts/wallpaper.sh