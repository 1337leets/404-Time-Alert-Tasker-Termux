#!/data/data/com.termux/files/usr/bin/bash

termux-wake-lock

while true; do
    current_time=$(date +"%H:%M")
    if [[ "$current_time" == "04:04" || "$current_time" == "16:04" ]]; then
		termux-toast "[ERR0R 404]"
        termux-notification --title "[ERROR]" --content "It is the time of 404!" --priority high
        termux-vibrate -d 400
		termux-wake-unlock
        exit 0
    fi
    sleep 10 # Time control in every 10 seconds
done
