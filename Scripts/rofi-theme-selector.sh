#!/usr/bin/env bash
set -euo pipefail


# Directory that contains your theme folders
THEMES_DIR="$HOME/arcanes-dotfiles/themes"

# Path to your apply-theme script
APPLY_THEME="$HOME/arcanes-dotfiles/Scripts/apply-theme.sh"

# Sanity checks
if [ ! -d "$THEMES_DIR" ]; then
  notify-send "Theme selector" "Themes dir not found: $THEMES_DIR"
  exit 1
fi

if [ ! -x "$APPLY_THEME" ]; then
  notify-send "Theme selector" "apply-theme script not executable: $APPLY_THEME"
  exit 1
fi

# Collect theme names (= directory names)
mapfile -t themes < <(find "$THEMES_DIR" -mindepth 1 -maxdepth 1 -type d -printf '%f\n' | sort)

[ "${#themes[@]}" -eq 0 ] && exit 1

# Let rofi select one
selection=$(printf '%s\n' "${themes[@]}" | rofi -dmenu -p "Select theme")
[ -z "$selection" ] && exit 0

# Apply the theme
"$APPLY_THEME" "$selection"

