#!/bin/sh
# "Change keyboard layout in" "~/.config/hypr/hyprland.conf" " " \

yad --width=530 --height=600 \
--center \
--fixed \
--title="Hyprland Keybindings" \
--no-buttons \
--list \
--column=Key: \
--column=Description: \
--column=Command: \
--timeout=0 \
--timeout-indicator=right \
"ESC" "close this app" "" "=" "mod" "(set mod Mod4)" \
"+t" "Terminal" "Open Terminal" \
"+w" "Application Menu" "(wofi)" \
"+Shift+f" "Full Launcher" "(nwggrid)" \
"+n" "" "Open Thunar" \
"+q" "close focused app" "(kill)" \
"Print" "screenshot(menu)" "Swappy/Nwgbar" \
"+Shift+e" "power-menu" "(wofi)" \
"+d" "Discord" "Open Discord" \
"+f" "Fullscreen" "Toggles to full screen" \
"+s" "Steam" "Open Steam" \
"+Shift+r" "Refresh" "Refresh Hyprctl" \
"+1(up to 0=10)" "Workspace" "Switch Workspace" \
"+1(up to 0=10)" "Workspace" "Move app to workspace" \


