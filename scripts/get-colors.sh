#!/bin/bash

WALLPAPER=$(hyprctl hyprpaper listloaded)

wal -n -s -t -i "$WALLPAPER"
