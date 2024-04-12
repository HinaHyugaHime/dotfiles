#!/usr/bin/env bash
yay -S --needed waybar hyprland thunar xdg-desktop-portal-{gtk,hyprland} udiskie network-manager-applet copyq swww thunar discord steam nwg-bar polkit-kde-agent swayosd-git xwaylandvideobridge-git kitty swaync jq nerd-fonts sassc swappy swaylock swayidle nwg-launchers nwg-bar nwg-drawer nwg-look hyprshot wofi

cd $HOME/.config/nwg-bar

sed -i "s/riceuser/$USER/g" bar-screenshot.json
