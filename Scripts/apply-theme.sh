#!/usr/bin/env bash
set -euo pipefail


THEMES_DIR="$HOME/arcanes-dotfiles/themes"
OUT_DIR="$HOME/arcanes-dotfiles/curr-theme"
OUT_CSS="$OUT_DIR/theme.css"


theme="$1"


if [ -z "$theme" ]; then
	echo "Usage: apply-theme <theme-name>
	exit 1
fi

if [ ! -d "$THEMES_DIR/$theme" ]; then
	echo "Theme '$theme' does not exist in $THEMES-DIR
	exit 1
fi

source "$THEMES_DIR/$theme/theme.conf"

mkdir -p "$OUT_DIR"



##########################################
# 1) Sets Wallpaper	     		 #
##########################################


hyprctl hyprpaper unload all
hyprctl hyprpaper preload "$THEMES_DIR/$theme/$WALLPAPER"
hyprctl hyprpaper wallpaper ",$THEMES_DIR/$theme/$WALLPAPER"



##########################################
# 2) Generates theme.css from COLORS	 #
##########################################


{
  # iterate over shell variables starting with COLOR_
  for var in $(compgen -A variable COLOR_); do
    value="${!var}"

    # skip empty variables
    if [ -z "$value" ]; then
      continue
    fi

    # convert COLOR_BG → color-bg
    name=$(echo "$var" | tr 'A-Z_' 'a-z-' )

    # write GTK-compatible color definition
    printf "@define-color %s %s;\n" "$name" "$value"
  done
} > "$OUT_CSS"

##########################################
# 3) Reload programms to pick up changes #
##########################################


hyprctl hyprpaper reload


pkill -USR1 kitty


pkill -SIGUSR2 waybar


notify-send "Theme switched. Now using theme: $theme"

