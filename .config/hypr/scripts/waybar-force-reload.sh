#!/usr/bin/env bash

pkill -x waybar
sleep 0.3
/usr/bin/waybar &
disown
