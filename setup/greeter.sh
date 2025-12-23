#!/usr/bin/env bash
# Install and configure greetd with tuigreet
# Usage: ./setup/greeter.sh

set -e

echo "Installing greetd and tuigreet..."
sudo pacman -S --noconfirm --needed greetd greetd-tuigreet

echo "Deploying greetd configuration..."
cd "$(dirname "$0")/.." # Go to archway root
sudo stow -d dotfiles -t / greetd

echo "Enabling greetd service..."
sudo systemctl enable greetd

echo ""
echo "Greeter setup complete!"
