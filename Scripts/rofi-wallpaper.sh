#!/usr/bin/env bash
#set -euo pipefail
# Directory with wallpapers
#DIR="$HOME/arcanes-dotfiles/wallpapers"

# Let the user choose
#sel="$(find "$DIR" -type f | rofi -dmenu -i -p 'Wallpaper')"

# If the user picked something, tell hyprpaper to use it
#if [ -n "$sel" ]; then
#    hyprctl hyprpaper unload all
#    hyprctl hyprpaper preload "$sel"
#    hyprctl hyprpaper wallpaper ",$sel"
#    wal -n -q -i "$sel"
#    pkill waybar
#    waybar & disown
    

#fi
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

