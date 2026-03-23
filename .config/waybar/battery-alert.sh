#!/bin/bash

# Prevent multiple notifications by tracking state
notified=false

while true; do
    # Get battery status and capacity
    # Note: Check /sys/class/power_supply/ to ensure your battery is BAT0 or BAT1
    battery_level=$(cat /sys/class/power_supply/BAT0/capacity)
    battery_status=$(cat /sys/class/power_supply/BAT0/status)

    # Check if discharging and below 15%
    if [ "$battery_status" = "Discharging" ] && [ "$battery_level" -le 15 ]; then
        if [ "$notified" = "false" ]; then
            notify-send -u critical "⚠️ Battery Low" "Charge is at ${battery_level}%"
            notified=true
        fi
    # Reset notification if charging or above 15%
    elif [ "$battery_status" = "Charging" ] || [ "$battery_level" -gt 15 ]; then
        notified=false
    fi

    # Check every 60 seconds
    sleep 60
done
