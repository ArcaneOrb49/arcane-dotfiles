#!/usr/bin/env bash
set euo pipefail

echo "Committing changes..."
cd ~/arcanes-dotfiles/
git add .
git commit -m "COMMIT FOR SYMLINK-REFRESH"

echo "Deleting stale symlinks..."
cd /home/arvid/
rm myflakes

echo "Re-adding fresh symlinks..."
ln -s ~/arcanes-dotfiles/myflakes ~/myflakes

echo "Done!"

