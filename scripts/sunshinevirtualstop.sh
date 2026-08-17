#!/usr/bin/env bash
hyprctl eval "hl.monitor({ output = 'HEADLESS-1', disabled = true })"
hyprctl dispatch 'hl.monitor({ output = "HDMI-A-1", disabled = false })'
hyprctl dispatch 'hl.monitor({ output = "DP-1", disabled = false })'
hyprctl reload
