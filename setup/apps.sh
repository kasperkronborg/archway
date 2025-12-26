#!/usr/bin/env bash

set -e

echo "Installing apps..."
sudo pacman -S --noconfirm --needed \
    zed

if [ ! -L "/usr/bin/zed" ]; then
    sudo ln -s /usr/bin/zeditor /usr/bin/zed # Create symlink for 'zed'
fi

stow -d dotfiles -t "$HOME" zed

echo ""
echo "Apps installed!"
