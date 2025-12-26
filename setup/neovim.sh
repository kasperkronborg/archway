#!/usr/bin/env bash

set -e

echo "Installing neovim..."
sudo pacman -S --noconfirm --needed \
    neovim \
    ripgrep

stow -d dotfiles -t "$HOME" neovim

echo ""
echo "Neovim installation complete!"
