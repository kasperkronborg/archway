#!/usr/bin/env bash
# Install Hyprland compositor
# Usage: ./setup/hyprland.sh

set -e

ARCHWAY_DIR="${ARCHWAY_DIR:-$HOME/archway}"

echo "Installing Hyprland..."
sudo pacman -S --noconfirm --needed \
    hyprland \
    waybar otf-font-awesome \
    rofi \
    ghostty \
    firefox

paru -S --noconfirm --needed \
    1password

echo "Deploying Hyprland configuration..."
cd "$ARCHWAY_DIR"
stow -d dotfiles -t "$HOME" hyprland waybar ghostty gtk

echo ""
echo "Hyprland installation complete!"
