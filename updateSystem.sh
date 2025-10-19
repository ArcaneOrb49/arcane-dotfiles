#!/usr/bin/env bash
set -euo pipefail

cd /home/arvid/arcanes-dotfiles/myflakes

echo "Updating flake inputs..."
nix flake update


echo "Rebuilding the NixOS System..."
sudo nixos-rebuild switch --flake .#myNixos
echo "Switching to updated version..."
echo "System update done! Commit to github or install another program"
