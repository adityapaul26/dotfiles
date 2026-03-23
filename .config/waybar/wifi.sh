#!/usr/bin/env bash

# --- CONFIGURATION ---
# Using Rofi as it handles password input better than Wofi
MENU="rofi -dmenu -i -p Wi-Fi"
# ---------------------

notify-send "Wi-Fi" "Scanning for networks..."

# Get current state
STATE=$(nmcli -fields WIFI g | grep -oE "enabled|disabled")

if [ "$STATE" = "enabled" ]; then
    TOGGLE="睊  Disable Wi-Fi"
else
    TOGGLE="直  Enable Wi-Fi"
fi

# Get list of networks (SSID only, no bars/security)
# This is the crucial change: we select only the SSID and strip spaces.
SSID_LIST=$(nmcli --fields "SSID" device wifi list | sed 1d | sed 's/  */ /g' | sort -u | awk '{$1=$1};1')

# Show menu to the user, combining the toggle option and the SSID list
CHOSEN=$(echo -e "$TOGGLE\n$SSID_LIST" | uniq -u | $MENU)

# Exit if nothing selected
if [ -z "$CHOSEN" ]; then
    exit 0
fi

# Handle Toggles
if [ "$CHOSEN" = "直  Enable Wi-Fi" ]; then
    nmcli radio wifi on
    notify-send "Wi-Fi" "Enabled"
    exit 0
elif [ "$CHOSEN" = "睊  Disable Wi-Fi" ]; then
    nmcli radio wifi off
    notify-send "Wi-Fi" "Disabled"
    exit 0
fi

# --- Connection Logic ---

# If chosen is a network name, attempt to connect directly using only the name (SSID)
SSID="$CHOSEN"

# Notify attempt
notify-send "Wi-Fi" "Connecting to $SSID..."

# Check if connection is already saved
SAVED=$(nmcli -g NAME connection | grep -w "$SSID")

if [ -n "$SAVED" ]; then
    # Connect to saved network (nmcli will auto-supply password if saved)
    if nmcli device wifi connect "$SSID"; then
        notify-send "Wi-Fi" "Connected to $SSID (Saved)"
    else
        notify-send "Wi-Fi" "Failed to connect to saved network."
    fi
else
    # New network, ask for password via Rofi, assuming WPA/WEP if connection fails first.
    # We rely on nmcli to prompt for the password via the D-Bus secret service if needed.
    # If it fails, we assume it needs a password and prompt the user.

    if nmcli device wifi connect "$SSID"; then
        notify-send "Wi-Fi" "Connected to $SSID (New, Open or Saved Pass)"
    else
        # Prompt for password if the initial connection failed (often means password required)
        PASS=$(wofi -dmenu -password -p "Password for $SSID")
        if [ -n "$PASS" ]; then
            if nmcli device wifi connect "$SSID" password "$PASS"; then
                notify-send "Wi-Fi" "Connected to $SSID (Password provided)"
            else
                notify-send "Wi-Fi" "Failed connection, wrong password or error."
            fi
        else
            notify-send "Wi-Fi" "Connection cancelled."
        fi
    fi
fi
