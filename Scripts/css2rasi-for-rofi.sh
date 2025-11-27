#!/usr/bin/env bash
# Convert @define-color lines to a rofi .rasi variable file.
# Usage: css2rasi-colors.sh input.css output.rasi

set -euo pipefail

if [ $# -ne 2 ]; then
    echo "Usage: $0 input.css output.rasi" >&2
    exit 1
fi

in="$1"
out="$2"

{
    echo "/* Auto-generated from $in for rofi */"
    echo "* {"

    # Lines like:
    #   @define-color color-1 #2B4574;
    # become:
    #   color-1: #2B4574;
    awk '
        $1 == "@define-color" {
            name = $2
            value = $3
            sub(/;$/, "", value)   # drop trailing ;
            printf("  %s: %s;\n", name, value)
        }
    ' "$in"

    echo "}"
} > "$out"

