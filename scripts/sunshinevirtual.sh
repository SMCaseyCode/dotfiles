#!/usr/bin/env bash

hyprctl dispatch 'hl.monitor({ output = "HDMI-A-1", disabled = true })'
hyprctl dispatch 'hl.monitor({ output = "DP-1", disabled = true })'
hyprctl eval "hl.monitor({ output = 'HEADLESS-1', mode = '${SUNSHINE_CLIENT_WIDTH}x${SUNSHINE_CLIENT_HEIGHT}@${SUNSHINE_CLIENT_FPS}', disabled = false })"
 
