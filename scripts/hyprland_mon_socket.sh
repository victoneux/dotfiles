#!/bin/sh

function handle {
	if [[ ${1:0:10} == "focusedmon" ]]; then
		new="${1:12}"
		len=${#new}
		new="${new::length-3}"
		echo $new > /tmp/hypr/$HYPRLAND_INSTANCE_SIGNATURE/active_monitor_2
		monitor_response=$(hyprctl monitors | grep "r $new")
		len2=${#monitor_response}
		mon_id="${monitor_response:length-3}"
		mon_id="${mon_id::1}"
		echo $mon_id > /tmp/hypr/$HYPRLAND_INSTANCE_SIGNATURE/active_monitor
	fi
}

socat - UNIX-CONNECT:/tmp/hypr/$(echo $HYPRLAND_INSTANCE_SIGNATURE)/.socket2.sock | while read line; do handle $line; done
