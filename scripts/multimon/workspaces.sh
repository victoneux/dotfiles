function handle {
    if [[ ${1:0:12} == "workspace>>$2" ]]; then
        echo uwu
    fi
}

socat -t 86400 - UNIX-CONNECT:/tmp/hypr/$(echo $HYPRLAND_INSTANCE_SIGNATURE)/.socket2.sock | while read line; do handle $line $1; done