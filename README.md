# macOS-scripts

## Brewfile

A curated list of applications that can be efficiently installed in bulk using Homebrew.

[Brewfile](https://github.com/vuhroon/macOS-scripts/blob/main/Brewfile)

## Monitors.sh

### What This Script Does

- Detects connection to the docking station.
- Opens **DisplayLink Manager** and **BetterDisplay** if the docking station is connected.
- Closes **DisplayLink Manager** and **BetterDisplay** if the docking station is not detected.

### Required Customization

To ensure proper functionality, you need to customize the `monitors.sh` script by specifying your device name. Follow the steps below to find and set your device name:

1. Open Terminal.
2. Run the following command to list all connected USB devices:
   ```
   system_profiler SPUSBDataType
3. Identify the name of your USB device from the output (e.g., “Anker USB-C Universal Dock”).
4. Edit the monitors.sh script and replace the placeholder with your device name.
    ```
    Example:
    DEVICE_NAME="Anker USB-C Universal Dock"
## Equipment being used:
- M1 MacBook Pro
- Anker 563 USB-C Docking Station
- 2x 1080p monitors via hdmi

## Installation

1. Add `monitors.sh` to your Applications folder.
   - Example: `/Applications/monitors.sh`

## Usage

When docked, run the file `monitors.sh`. You can use Spotlight Search to run the file by searching for `monitors.sh`.

## ETC

### Why I Created This

- **DisplayLink Manager:** My docking station requires DisplayLink Manager to extend my device's display to external monitors.
- **BetterDisplay:** I use BetterDisplay for an enhanced viewing experience on my 1080p displays.
- **Efficiency:** This script prevents these two applications from being open when not connected to the docking station.

If there are better solutions, please let me know.