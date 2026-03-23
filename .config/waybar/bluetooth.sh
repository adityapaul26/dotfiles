#!/usr/bin/env bash

# --- CONFIGURATION ---
MENU="rofi -dmenu -i -p Bluetooth"
# ---------------------

# 1. Check Power State
POWER_STATE=$(bluetoothctl show | grep "Powered: yes")

if [ -z "$POWER_STATE" ]; then
    # Bluetooth is OFF
    TOGGLE="🔵  Enable Bluetooth"

    CHOSEN=$(echo "$TOGGLE" | $MENU)

    if [ -z "$CHOSEN" ]; then
        exit 0
    fi

    if [ "$CHOSEN" = "$TOGGLE" ]; then
        rfkill unblock bluetooth
        bluetoothctl power on
        notify-send "Bluetooth" "Enabled"
    fi
    exit 0
fi

# Bluetooth is ON
TOGGLE="🔴  Disable Bluetooth"
SCAN="🔍  Scan for Devices"

# Notify scanning
notify-send "Bluetooth" "Scanning for devices..."

# Start scan and wait
bluetoothctl --timeout 5 scan on >/dev/null 2>&1

# Get ALL devices (paired and available)
DEVICES=$(bluetoothctl devices | while read -r line; do
    MAC=$(echo "$line" | awk '{print $2}')
    NAME=$(echo "$line" | cut -d' ' -f3-)

    # Check if connected
    if bluetoothctl info "$MAC" 2>/dev/null | grep -q "Connected: yes"; then
        echo "✓ $NAME"
    else
        echo "  $NAME"
    fi
done | sort -u)

# Show menu with all options
CHOSEN=$(printf "%s\n%s\n%s" "$TOGGLE" "$SCAN" "$DEVICES" | $MENU)

# Exit if nothing selected
if [ -z "$CHOSEN" ]; then
    exit 0
fi

# Handle Actions
if [ "$CHOSEN" = "$TOGGLE" ]; then
    bluetoothctl power off
    notify-send "Bluetooth" "Disabled"
    exit 0

elif [ "$CHOSEN" = "$SCAN" ]; then
    # Re-run the script to refresh
    exec "$0"
    exit 0
fi

# Handle Device Connection
# Remove the checkmark if present
DEVICE_NAME=$(echo "$CHOSEN" | sed 's/^[✓ ]*//')

# Find MAC address by name
MAC=$(bluetoothctl devices | grep -F "$DEVICE_NAME" | awk '{print $2}' | head -n 1)

if [ -z "$MAC" ]; then
    notify-send "Bluetooth" "Device not found."
    exit 1
fi

# Check device status
INFO=$(bluetoothctl info "$MAC" 2>/dev/null)

if echo "$INFO" | grep -q "Paired: yes"; then
    # Already paired - toggle connection
    if echo "$INFO" | grep -q "Connected: yes"; then
        notify-send "Bluetooth" "Disconnecting from $DEVICE_NAME..."
        bluetoothctl disconnect "$MAC"
        notify-send "Bluetooth" "Disconnected"
    else
        notify-send "Bluetooth" "Connecting to $DEVICE_NAME..."
        if bluetoothctl connect "$MAC"; then
            notify-send "Bluetooth" "Connected to $DEVICE_NAME"
        else
            notify-send "Bluetooth" "Connection failed. Device may be out of range."
        fi
    fi
else
    # New device - pair using expect-like approach with bluetoothctl
    notify-send "Bluetooth" "Pairing with $DEVICE_NAME..."

    # Remove device first if it exists
    bluetoothctl remove "$MAC" >/dev/null 2>&1

    # Make sure agent is running and set to default
    bluetoothctl agent on >/dev/null 2>&1
    bluetoothctl default-agent >/dev/null 2>&1

    # Scan briefly to ensure device is discoverable
    timeout 3s bluetoothctl scan on >/dev/null 2>&1 &
    sleep 2

    # Create a temporary expect-like script using bluetoothctl commands
    (
        echo "agent NoInputNoOutput"
        echo "default-agent"
        echo "pair $MAC"
        sleep 10
        echo "trust $MAC"
        sleep 1
        echo "connect $MAC"
        sleep 5
        echo "quit"
    ) | bluetoothctl >/dev/null 2>&1 &

    BT_PID=$!

    # Wait for pairing process
    sleep 12

    # Check if paired
    if bluetoothctl info "$MAC" | grep -q "Paired: yes"; then
        notify-send "Bluetooth" "Pairing successful!"
        sleep 2

        # Try to connect
        if bluetoothctl connect "$MAC" 2>&1 | grep -q "Connection successful\|already"; then
            notify-send "Bluetooth" "✓ Connected to $DEVICE_NAME"
        else
            # Second attempt
            sleep 2
            if bluetoothctl connect "$MAC" 2>&1 | grep -q "Connection successful\|already"; then
                notify-send "Bluetooth" "✓ Connected to $DEVICE_NAME"
            else
                notify-send "Bluetooth" "Paired but not connected. Try selecting the device again."
            fi
        fi
    else
        # Kill any hanging bluetoothctl processes
        kill $BT_PID 2>/dev/null

        # Try alternative pairing method with confirmation
        notify-send "Bluetooth" "Trying alternative pairing method..."

        # Use default agent which auto-confirms
        echo -e "power on\nagent on\ndefault-agent\npairable on\nscan on" | bluetoothctl >/dev/null 2>&1 &
        sleep 3

        # Simple pair command
        if echo -e "pair $MAC\nyes\n" | timeout 15s bluetoothctl 2>&1 | tee /tmp/bt_output.log | grep -q "Pairing successful"; then
            bluetoothctl trust "$MAC" >/dev/null 2>&1
            sleep 2

            if bluetoothctl connect "$MAC"; then
                notify-send "Bluetooth" "✓ Connected to $DEVICE_NAME"
            else
                notify-send "Bluetooth" "Paired successfully. Select device again to connect."
            fi
        else
            notify-send "Bluetooth" "Pairing failed. Make sure $DEVICE_NAME is in pairing mode and nearby. You may need to confirm pairing on the device."
        fi
    fi
fi
