#!/usr/bin/env bash
# Bootstrap script for archway dotfiles
# Usage: curl -fsSL https://raw.githubusercontent.com/kasperkronborg/archway/main/bootstrap.sh | bash -s -- ~/dotfiles

set -e

ARCHWAY_DIR="${1:-$HOME/archway}"

echo "Installing git..."
sudo pacman -S --noconfirm --needed git

echo "Cloning archway to $ARCHWAY_DIR..."
git clone https://github.com/YOUR_USERNAME/archway.git "$ARCHWAY_DIR"

echo ""
echo "Bootstrap complete!"
echo "Archway cloned to: $ARCHWAY_DIR"
echo ""
echo "Next steps:"
echo "  cd $ARCHWAY_DIR"
echo "  # Review and run setup scripts"
