#!/bin/bash

WALLPAPER_DIR="${WALLPAPER_DIR:-$HOME/.config/assets/media/anim}"

build_theme() {
    rows=$1
    cols=$2
    icon_size=$3
    echo "element{orientation:vertical;}element-text{horizontal-align:0.5;}element-icon{size:$icon_size.0000em;}listview{lines:$rows;columns:$cols;}"
}

theme="$HOME/.config/rofi/themes/Hyprlain.rasi"
ROFI_CMD="rofi -dmenu -i -show-icons -window-title walls -theme-str $(build_theme 3 5 6) -theme ${theme}"

choice=$(
    ls --escape "$WALLPAPER_DIR" | \
        while read A; do echo -en "$A\x00icon\x1f$WALLPAPER_DIR/$A\n"; done | \
        $ROFI_CMD -p "Wallpaper"
)

[ -z "$choice" ] && exit 0

wallpaper="$WALLPAPER_DIR/$choice"
fish -c "switch_wall '${wallpaper}'"
