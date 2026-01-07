#!/usr/bin/env bash
set -euo pipefail

cd /home/arvid/arcanes-dotfiles/myflakes

echo "Updating flake inputs..."
nix flake update

echo "Rebuilding the NixOS system (boot)…"
sudo nixos-rebuild boot --flake .#myNixos

echo "Build finished."
echo "Reboot to activate the new system."
echo "If something breaks, select the previous generation in GRUB."
nofify-send "Update done" "Please reboot at your earliest convenience"

