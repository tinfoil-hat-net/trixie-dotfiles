#!/bin/bash

# Configuration for dzen2
DZEN2_FONT="fixed"
DZEN2_FG="#00FF00"  # Green foreground for active VPN
DZEN2_BG="#000000"  # Black background
DZEN2_WIDTH=150
DZEN2_HEIGHT=15
DZEN2_X=1770  # Adjust X position as needed
DZEN2_Y=1200  # Adjust Y position as needed

# Function to check OpenVPN status
check_vpn_status() {
    # Check if OpenVPN process is running and connected
    if pgrep -x "openvpn" > /dev/null && ip link show tun0 > /dev/null 2>&1; then
        echo "^fg($DZEN2_FG)VPN Active^fg()"
    else
        echo "^fg(#FF0000)VPN Inactive^fg()"  # Red if not connected
    fi
}

# Main loop to update dzen2 bar
while true; do
    check_vpn_status | dzen2 -p -w "$DZEN2_WIDTH" -h "$DZEN2_HEIGHT" -x "$DZEN2_X" -y "$DZEN2_Y" -fg "$DZEN2_FG" -bg "$DZEN2_BG" -fn "$DZEN2_FONT" &
    # Store the PID of the dzen2 process
    DZEN_PID=$!
    # Wait for a short period before checking again
    sleep 5
    # Kill the previous dzen2 instance to avoid overlapping
    kill $DZEN_PID 2>/dev/null
done
