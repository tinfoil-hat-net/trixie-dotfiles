#!/bin/bash

# Configuration for dzen2
DZEN2_FONT="fixed"
DZEN2_FG="#00FF00"  # Green foreground for active VPN
DZEN2_BG="#000000"  # Black background
DZEN2_WIDTH=150
DZEN2_HEIGHT=15
DZEN2_X=1920  # Adjust X position as needed
DZEN2_Y=1200  # Adjust Y position as needed

# Function to check OpenVPN status
check_vpn_status() {
    # Check if OpenVPN process is running and connected
    if pgrep -x "openvpn" > /dev/null && ip link show tun0 > /dev/null 2>&1; then
        echo "^fg($DZEN2_FG)VPN - Connected^fg()"
    fi
}

# Main loop to update dzen2 bar
while true; do
    # Get VPN status
    STATUS=$(check_vpn_status)
    # Only launch dzen2 if there is output (i.e., VPN is connected)
    if [ -n "$STATUS" ]; then
        echo "$STATUS" | dzen2 -p -w "$DZEN2_WIDTH" -h "$DZEN2_HEIGHT" -x "$DZEN2_X" -y "$DZEN2_Y" -fg "$DZEN2_FG" -bg "$DZEN2_BG" -fn "$DZEN2_FONT" &
        DZEN_PID=$!
        # Wait before checking again
        sleep 5
        # Kill the dzen2 instance to avoid overlapping
        kill $DZEN_PID 2>/dev/null
    else
        # Wait before checking again, no dzen2 instance to kill
        sleep 5
    fi
done
