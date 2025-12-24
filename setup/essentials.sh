#!/usr/bin/env bash
# Install essential tools for archway
# Usage: ./setup/essentials.sh

set -e

echo "Installing essential tools..."
sudo pacman -S --noconfirm --needed \
    base-devel \
    wget \
    man-db \
    stow \
    vi

echo ""
echo "Essential tools installed!"
