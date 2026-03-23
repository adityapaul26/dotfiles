#!/bin/bash

# 1. Set your wallpaper directory
# VERIFY THIS PATH! In your previous messages, it was "$HOME/Pictures/Wallpapers/"
DIR="$HOME/walls/"

# 2. Find a random wallpaper
# We capture the output. If directory is wrong, this will be empty.
RANDOM_WALL=$(find "$DIR" -type f \( -name "*.jpg" -o -name "*.png" \) 2>/dev/null | shuf -n 1)

# Safety Check: Stop if no wallpaper was found
if [ -z "$RANDOM_WALL" ]; then
    notify-send "Error" "No wallpaper found in $DIR"
    exit 1
fi

# 3. Apply Wallpaper
swww img "$RANDOM_WALL" --transition-type grow --transition-fps 60

# 4. Generate Colors (One line is safer)
# I removed the backslashes to prevent errors.
# matugen image "$RANDOM_WALL" --old-json-output
matugen --old-json-output --source-color-index 0 image "$RANDOM_WALL"
# 5. Reload Waybar
killall -SIGUSR2 waybar

# Optional: Notify that it finished
notify-send "Theme Changed" "New wallpaper: $(basename "$RANDOM_WALL")"
