#!/usr/bin/env bash
set -euo pipefail

CSS="/home/arvid/arcanes-dotfiles/curr-theme/theme.css"
OUT="/home/arvid/arcanes-dotfiles/curr-theme/current-theme.conf"

if [ ! -f "$CSS" ]; then
    echo "CSS file not found: $CSS" >&2
    exit 1
fi

declare -A COLORS

while IFS= read -r line; do
    if [[ $line =~ @define-color[[:space:]]+([a-zA-Z0-9_-]+)[[:space:]]+(#[0-9A-Fa-f]{6}) ]]; then
        COLORS["${BASH_REMATCH[1]}"]="${BASH_REMATCH[2]}"
    fi
done < "$CSS"

need() {
    local key="$1"
    if [[ -z "${COLORS[$key]}" ]]; then
        echo "Missing required color in CSS: $key" >&2
        exit 1
    fi
    echo "${COLORS[$key]}"
}

{
echo "background $(need color-bg)"
echo "foreground $(need color-fg)"
echo "cursor $(need color-fg)"
echo "selection_background $(need color-3)"
echo "selection_foreground $(need color-bg)"
echo

echo "color0  $(need color-black)"
echo "color1  $(need color-red)"
echo "color2  $(need color-green)"
echo "color3  $(need color-yellow)"
echo "color4  $(need color-blue)"
echo "color5  $(need color-magenta)"
echo "color6  $(need color-cyan)"
echo "color7  $(need color-white)"

echo "color8  $(need color-1)"
echo "color9  $(need color-accent)"
echo "color10 $(need color-2)"
echo "color11 $(need color-3)"
echo "color12 $(need color-accent-2)"
echo "color13 $(need color-magenta)"
echo "color14 $(need color-cyan)"
echo "color15 $(need color-white)"
} > "$OUT"

