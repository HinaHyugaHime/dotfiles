#!/usr/bin/env bash

user_config_dir="$HOME/.config"
icon_path="$user_config_dir/hypr/icons/color-swatch-theme.png"
wallpapers_dir="$user_config_dir/wallpapers"
waybar_style_path="$user_config_dir/waybar/"
hyprpaper_config="$user_config_dir/hypr/"
icon_theme_dir="$user_config_dir/nwg-bar/icon-theme"
icon_theme_prefix="Reversal-"
icon_theme_suffix=""

gtk_theme_dir="$user_config_dir/nwg-bar/gtk-theme"
gtk_theme_prefix="Graphite-"
gtk_theme_suffix="-Dark-nord"

gsettings_gnome_schema="org.gnome.desktop.interface"

gtk_theme_identifier=""
icon_theme_identifier=""
notification_theme_name=""
updated_theme=$1

if [ -z "$updated_theme" ]; then
  updated_theme=purple
fi

case $updated_theme in
"purple")
  gtk_theme_identifier="purple"
  icon_theme_identifier="purple"
  notification_theme_name="Hinata Hyuga"
  waybar_style_path="$user_config_dir/waybar/style-purple.css"
  hyprpaper_config="$user_config_dir/hypr/hyprpaper-purple.conf"
  ;;
"red-black-blue")
  gtk_theme_identifier="red"
  icon_theme_identifier="red"
  notification_theme_name="Twin Akuma"
  waybar_style_path="$user_config_dir/waybar/style-red-black-blue.css"
    hyprpaper_config="$user_config_dir/hypr/hyprpaper-red-black-blue.conf"
  ;;
"red-orange-yellow")
  gtk_theme_identifier="orange"
  icon_theme_identifier="orange"
  notification_theme_name="Mordred"
  waybar_style_path="$user_config_dir/waybar/style-red-orange-yellow.css"
    hyprpaper_config="$user_config_dir/hypr/hyprpaper-red-orange-yellow.conf"
  ;;
*)
  exit 1
  ;;
esac


killall waybar && waybar -s "$waybar_style_path"

notify-send --expire-time=3000 --icon="$icon_path" "ThemeSwitch" "ThemeSwitch: Switching system theme to: $notification_theme_name..."

gtk_theme_name="$gtk_theme_prefix$gtk_theme_identifier$gtk_theme_suffix"
icon_theme_name="$icon_theme_prefix$icon_theme_identifier$icon_theme_suffix"

$gtk_theme_dir/install.sh -t $gtk_theme_identifier -c dark -l --tweaks nord normal rimless &
$icon_theme_dir/install.sh -$icon_theme_identifier &
hyprpaper --config "$hyprpaper_config"

gsettings set $gsettings_gnome_schema gtk-theme "$gtk_theme_name"
gsettings set $gsettings_gnome_schema icon-theme "$icon_theme_name"
notify-send --expire-time=3000 --icon="$icon_path" "ThemeSwitch" "ThemeSwitch: System theme updated to: $notification_theme_name!"

