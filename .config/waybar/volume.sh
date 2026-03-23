#!/bin/bash

# Configuration: Step size (percentage)
step=5

# Get the argument (up, down, mute)
case "$1" in
    up)
        pamixer -i $step
        ;;
    down)
        pamixer -d $step
        ;;
    mute)
        pamixer -t
        ;;
esac

# Get current details
volume=$(pamixer --get-volume)
is_muted=$(pamixer --get-mute)

# Select the icon based on volume level
if [ "$is_muted" = "true" ]; then
    icon="󰝟"
    text="Muted"
else
    if [ "$volume" -gt 70 ]; then
        icon=""
    elif [ "$volume" -gt 30 ]; then
        icon="󰖀"
    else
        icon="󰕾"
    fi
    text="$volume%"
fi

# Send the notification
# -h string:x-canonical-private-synchronous:sys-notify  -> Replaces previous notification (prevents stacking)
# -h int:value:$volume                                  -> Creates the visual progress bar
notify-send -h string:x-canonical-private-synchronous:sys-notify \
            -h int:value:"$volume" \
            -u low \
            "$icon  Volume: $text"
