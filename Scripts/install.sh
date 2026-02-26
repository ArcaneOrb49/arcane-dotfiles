#!/usr/bin/env bash
set -euo pipefail

cd ~/arcanes-dotfiles/myflakes/
sudo nixos-rebuild boot --flake .#myNixos
echo "Program installed! Please reboot"
