#!/usr/bin/env bash
yay -S --needed waybar hyprland xdg-desktop-portal-{gtk,hyprland} udiskie network-manager-applet copyq hyprpaper nwg-{dock-hyprland,look,drawer,bar} polkit-kde-agent swayosd-git xwaylandvideobridge-git kitty swaync jq nerd-fonts sassc swappy hyprshot wofi

cd $HOME/.config/nwg-bar

sed -i "s/riceuser/$USER/g" bar-screenshot.json

sed -i "s/riceuser/$USER/g" bar-wallpaper.json
