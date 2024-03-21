#!/usr/bin/env bash

user_config_dir="$HOME/.config"
waybar_config_dir="$user_config_dir/waybar"

default_bar_id="0"
stats_bar_id="1"

default_bar_file="$waybar_config_dir/config-default"
stats_bar_file="$waybar_config_dir/config-stats"
current_bar_file="$waybar_config_dir/config"

current_bar_id=$(cat "$current_bar_file" | jq ".id" --raw-output)

if [[ $current_bar_id -eq $default_bar_id ]]; then
  cp $stats_bar_file $current_bar_file
else
  cp $default_bar_file $current_bar_file
fi

$user_config_dir/hypr/scripts/waybar-force-reload.sh
