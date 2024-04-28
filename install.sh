#!/usr/bin/env bash
yay -S --needed waybar hyprland eww ripgrep rofi grimshot thunar xdg-desktop-portal-{gtk,hyprland} udiskie network-manager-applet copyq swww thunar foot discord steam nwg-bar polkit-kde-agent swayosd-git xwaylandvideobridge-git kitty swaync jq nerd-fonts sassc swappy swaylock swayidle nwg-launchers nwg-bar nwg-drawer nwg-look hyprshot wofi

sudo mv $HOME/dotfiles/nwgbar/* /usr/share/nwg-launchers/nwgbar

cd $HOME/.config/nwg-bar

sed -i "s/riceuser/$USER/g" bar-screenshot.json

cd ~/

git clone https://github.com/ShakedGold/hyprmsn

chmod +x install.sh

./install.sh
