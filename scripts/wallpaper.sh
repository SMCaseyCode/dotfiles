#!/usr/bin/env bash

WALLPAPER_DIR="$HOME/Downloads/wallpapers"
CURRENT_WALL=$(hyprctl hyprpaper listactive | awk '{print $NF}' | head -n1)

# Get a random wallpaper that is not the current one
WALLPAPER=$(find "$WALLPAPER_DIR" -type f ! -name "$(basename "$CURRENT_WALL")" | shuf -n 1)

# Apply the selected wallpaper
hyprctl hyprpaper wallpaper ",$WALLPAPER"
