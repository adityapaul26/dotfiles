#!/bin/bash

# Ensure we have a path for playerctl
PLAYERCTL=$(which playerctl 2>/dev/null || echo "playerctl")
JQ=$(which jq 2>/dev/null || echo "")

# Get artist and title, handle errors gracefully
artist=$($PLAYERCTL metadata --format '{{artist}}' 2>/dev/null)
title=$($PLAYERCTL metadata --format '{{title}}' 2>/dev/null)

# If no player is running or no title is available, output empty JSON object
if [ -z "$title" ]; then
    echo '{"text": "", "tooltip": ""}'
    exit 0
fi

# Combine artist and title, or just title if artist is missing
if [ -z "$artist" ]; then
    text="$title"
else
    text="$artist - $title"
fi

maxlength=25

# Truncate if too long
if [ ${#text} -gt $maxlength ]; then
    text_display="${text:0:$((maxlength - 3))}..."
else
    text_display="$text"
fi

# Output JSON
if [ -n "$JQ" ]; then
    $JQ -cn --arg text "$text_display" --arg tooltip "$text" '{"text": $text, "tooltip": $tooltip}'
else
    # Fallback if jq is not available, escaping double quotes manually
    escaped_text=$(echo "$text_display" | sed 's/"/\\"/g')
    escaped_tooltip=$(echo "$text" | sed 's/"/\\"/g')
    echo "{\"text\": \"$escaped_text\", \"tooltip\": \"$escaped_tooltip\"}"
fi
