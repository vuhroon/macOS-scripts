#!/bin/bash

# Check if the specific USB device is connected
#In Terminal use "system_profiler SPUSBDataType" to locate the name of your dock
DEVICE_NAME="FILL IN"
DEVICE_CONNECTED=$(system_profiler SPUSBDataType | grep "$DEVICE_NAME")

# Function to open the applications
open_apps() {
    open -a "BetterDisplay"
    open -a "DisplayLink Manager"
}

# Function to close the applications
close_apps() {
    osascript -e 'quit app "BetterDisplay"'
    osascript -e 'quit app "DisplayLink Manager"'
}

# If the device is found, open the applications
if [[ -n "$DEVICE_CONNECTED" ]]; then
    echo "$DEVICE_NAME is connected."
    open_apps
else
    echo "$DEVICE_NAME is not connected."
    close_apps
fi