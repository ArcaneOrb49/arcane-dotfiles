#!/usr/bin/env bash
set -euo pipefail

# Input file with @define-color directives
SOURCE="$HOME/arcanes-dotfiles/curr-theme/theme.css"

# Output file for Vencord-compatible CSS variables
TARGET="$HOME/arcanes-dotfiles/curr-theme/theme-vencord.css"

{
    echo ":root {"
    sed -E 's/@define-color ([^ ]+) (.*);/  --\1: \2;/' "$SOURCE"
    echo "}"
} > "$TARGET"

echo "Generated $TARGET"

