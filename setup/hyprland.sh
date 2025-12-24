#!/usr/bin/env bash
# Install Hyprland compositor
# Usage: ./setup/hyprland.sh

set -e

echo "Installing Hyprland..."
sudo pacman -S --noconfirm --needed \
    hyprland \
    ghostty

echo ""
echo "Hyprland installation complete!"
