#!/usr/bin/env bash
# Check hyprctl version
hyprctl version

# Check which hyprpaper binary is being used
which hyprpaper
readlink -f $(which hyprpaper)

# Check hyprpaper version (if it has one)
hyprpaper --version || hyprpaper -v || echo "No version flag"

# Kill hyprpaper and restart it manually to see any output
killall hyprpaper
hyprpaper &
sleep 2

# Now try the command again
hyprctl hyprpaper listloaded
Hyprland 0.52.0 built from branch unknown at commit 7ccc57eb7cacded5e7a8835b705bba48963d3cb3 dirty (unknown).
