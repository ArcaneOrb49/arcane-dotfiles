#!/usr/bin/env bash
set -euo pipefail


input="$HOME/arcanes-dotfiles/curr-theme/theme.css"

if [ -z "$input" ]; then
    echo "Usage: $0 /path/to/theme.css"
    exit 1
fi

# directory of input
dir="$HOME/arcanes-dotfiles/curr-theme"
output="${dir}/theme.conf"

# truncate output file
: > "$output"

while IFS= read -r line; do
    case "$line" in
        @define-color*)
            # split line into words:
            #   $1 = @define-color
            #   $2 = name
            #   $3 = #RRGGBB;
            set -- $line
            name="$2"
            hex="$3"

            # remove leading '#' and trailing ';'
            hex="${hex#\#}"
            hex="${hex%;}"

            # extract R G B
            r_hex="${hex:0:2}"
            g_hex="${hex:2:2}"
            b_hex="${hex:4:2}"

            # hex -> decimal
            r=$((16#$r_hex))
            g=$((16#$g_hex))
            b=$((16#$b_hex))

            # write to theme.conf
            echo "\$${name} = rgba(${r},${g},${b},1.0)" >> "$output"
            ;;
    esac
done < "$input"

echo "Generated: $output"

