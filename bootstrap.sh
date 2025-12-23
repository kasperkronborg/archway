#!/usr/bin/env bash

set -e

echo "=== Archway Bootstrap ==="

# Install stow if not present
if ! command -v stow &> /dev/null; then
    echo "Installing GNU Stow..."
    sudo pacman -S --noconfirm --needed stow
fi

echo "Bootstrap complete!"
