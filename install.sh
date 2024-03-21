#!/usr/bin/env bash
yay -S --needed waybar hyprland xdg-desktop-portal-{gtk,hyprland} udiskie network-manager-applet copyq swww nwg-{dock-hyprland,look,drawer,bar} polkit-kde-agent swayosd-git xwaylandvideobridge-git kitty swaync jq nerd-fonts sassc swappy hyprshot rofi

wget "https://drive.usercontent.google.com/download?id=1wOWDBuUxu7xKlECDU9IORaDBpMb8pJ_Y&export=download&authuser=0&confirm=t&uuid=fad25827-99c2-4117-b5d5-f8878e4fe05e&at=APZUnTXwthyNPaqtll1dUqzu1xVS%3A1710987483480" -O config.tar.gz

bsdtar -xvf config.tar.gz -C $HOME

cd $HOME/.config/nwg-bar

sed -i "s/riceuser/$USER/g" bar-screenshot.json

sed -i "s/riceuser/$USER/g" bar-wallpaper.json
