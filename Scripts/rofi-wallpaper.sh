#!/usr/bin/env bash
DIR="$HOME/arcanes-dotfiles/wallpapers"

# Make an associative array: key=filename, value=fullpath
declare -A files
while IFS= read -r path; do
    name="$(basename "$path")"
    files["$name"]="$path"
done < <(find "$DIR" -type f)

# Show only filenames in Rofi
sel="$(printf '%s\n' "${!files[@]}" | sort | rofi -dmenu -i -p 'Wallpaper')"

# Get full path back
fullpath="${files[$sel]}"

if [ -n "$fullpath" ]; then
    hyprctl hyprpaper preload "$fullpath"
    hyprctl hyprpaper wallpaper ",$fullpath"
    wal -n -q -i "$fullpath"
    pkill waybar
    sleep 0.3
    waybar & disown
fi

