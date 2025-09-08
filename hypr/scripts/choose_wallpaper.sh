#!/usr/bin/env bash

if pidof rofi > /dev/null; then
    pkill rofi
fi

wallpapers_dir="$HOME/Pictures/Wallpapers"
ROFI_THEME="$HOME/.config/rofi/config.rasi"

selected_wallpaper=$(for a in "$wallpapers_dir"/*; do
    echo -en "$(basename "${a%.*}")\0icon\x1f$a\n"
done | rofi -dmenu -p " " -theme "$ROFI_THEME")

if [[ -n "$selected_wallpaper" ]]; then
    image_fullname_path=$(find "$wallpapers_dir" -type f -name "$selected_wallpaper.*" | head -n 1)
    magick "$image_fullname_path" "$wallpapers_dir/choosen.png"
    image_fullname_path="$wallpapers_dir/choosen.png"
else
    image_fullname_path="$wallpapers_dir/choosen.png"
fi

pkill swaybg
swaybg -i "$image_fullname_path" -m fill &

