!/usr/bin/env bash
set -euxo pipefail


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


swaybg -i $THEMES_DIR/$theme/$WALLPAPER &


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




pkill -SIGUSR2 waybar

cd $HOME/arcanes-dotfiles/Scripts/
./css2rasi-for-rofi.sh "$HOME/arcanes-dotfiles/curr-theme/theme.css" "$HOME/arcanes-dotfiles/curr-theme/theme.rasi"
./css2conf-for-kitty.sh

pkill -USR1 kitty


./css2conf-for-hyprland.sh
hyprctl reload

# Absolute Last Action
notify-send "Theme switched." "Now using theme: $theme"

