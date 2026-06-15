#!/bin/bash

WALLPAPER=$(hyprctl hyprpaper listactive | awk '{print $NF}' | head -n1)

matugen image "$WALLPAPER" --prefer saturation -m "dark"
