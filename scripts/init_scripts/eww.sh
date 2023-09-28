mon_count=$1

bar_format="

(defwidget workspacesMON []
    (box
        :class \"text_widget\"
	(box
		:class \"internal_box\"
		workspaces_pollMON
	)
    )
)

(defpoll workspaces_pollMON :interval \".1s\" \"echo \$(~/.config/scripts/polls/workspacespoll.sh MP1)\")

(defwindow barMON
    :geometry
        (geometry
            :x \"10\"
            :y \"10\"
            :height \"42px\"
            :width \"100%\"
            :anchor \"top center\"
        )
    :monitor MON
    :exclusive \"true\"
    :wm-ignore \"false\"
    :windowtype \"dock\"
    :stacking \"fg\"
    (centerbox
        :orientation \"h\"
        :class \"bar\"
        :space-evenly false
        :spacing 10
        (box
            :class \"left\"
            :halign \"start\"
            :spacing 10
            :space-evenly false
            (network)
            (volume)
            (workspacesMON)
        )
        (box
            :class \"center\"
            :halign \"center\"
            :spacing 10
            :space-evenly false
            (player)
        )
        (box
            :class \"right\"
            :halign \"end\"
            :spacing 10
            :space-evenly false
            $(if [[ -f '/sys/class/power_supply/BAT0/status' ]]; then echo "(battery)"; fi)
            (date)
            (time)
        )
    )
)

"

pkill eww
rm $HOME/.config/eww/eww.yuck
cp $HOME/.config/eww/eww.yuck.template $HOME/.config/eww/eww.yuck

for ((i=0; i<mon_count; i++))
do
    echo $(echo $bar_format | sed "s/MON/$i/g" | sed "s/MP1/$(($i+1))/g") >> "$HOME/.config/eww/eww.yuck"
done

eww daemon

for ((i=0; i<mon_count; i++))
do
    eww open bar$i
done
