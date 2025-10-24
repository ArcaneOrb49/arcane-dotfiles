#!/usr/bin/env bash
-set euo pipefail

echo "Committing changes..."
cd ~/arcane-dotfiles/
git add .
git commit -m "COMMIT FOR SYMLINK-REFRESH"

echo "Deleting stale symlinks..."
cd /home/arvid/
rm myflake

echo "Re-adding fresh symlinks..."
ln -s ~/arcane-dotfiles/myflakes ~/myflakes

echo "Done!"

