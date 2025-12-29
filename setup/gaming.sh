#!/usr/bin/env bash

set -e

echo "Installing gaming apps..."
sudo pacman -S --noconfirm --needed \
    steam

echo ""
echo "Gaming apps installed!"
