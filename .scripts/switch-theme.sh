#!/usr/bin/env bash

#Script I made to switch wallpapers. (It's a replacement to the old one)

WALLPAPER_DIR="$HOME/assets/wallpapers"
CHOSEN_WALLPAPER=$(ls $WALLPAPER_DIR | rofi -dmenu -config $XDG_CONFIG_HOME/rofi/themePickerConfig.rasi)
matugen --source-color-index 0 image $WALLPAPER_DIR/$CHOSEN_WALLPAPER