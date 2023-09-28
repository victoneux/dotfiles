workspaces=$(hyprctl monitors | grep "active workspace: $1" | grep -o 'active workspace: [0-9]*' | awk '{print substr($3, 2, 1)}')

echo $workspaces