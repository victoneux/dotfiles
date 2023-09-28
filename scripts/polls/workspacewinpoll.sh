workspace=$(hyprctl monitors | grep "active workspace: $1" | grep -o 'active workspace: [0-9]*' | awk '{print $3}')
lastwin=$(hyprctl workspaces | grep "ID $workspace" -B3 | grep lastwindow: | awk '{print $2}')
echo $lastwin
