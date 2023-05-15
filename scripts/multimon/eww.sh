mon_count=$1

bar_format="

    (defwindow bar%s
        :geometry
            (geometry
                :x \"10\"
                :y \"10\"
                :height \"42px\"
                :width \"100%%\"
                :anchor \"top center\"
            )
        :monitor %s
        :exclusive \"true\"
        :wm-ignore \"false\"
        :windowtype \"dock\"
        :stacking \"fg\"
        (bar)
    )

"

eww kill
rm $HOME/.config/eww/eww.yuck
cp $HOME/.config/eww/eww.yuck.template $HOME/.config/eww/eww.yuck

for ((i=0; i<mon_count; i++))
do
    echo $(printf "$bar_format" "$i" "$i") >> "$HOME/.config/eww/eww.yuck"
done

eww daemon

for ((i=0; i<mon_count; i++))
do
    eww open bar$i
done