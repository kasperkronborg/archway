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
    vi \
    terminus-font \
    openssh

# Check if paru is already installed
if command -v paru &> /dev/null; then
    echo "Paru is already installed"
    exit 0
fi

cd /tmp
git clone https://aur.archlinux.org/paru.git

cd paru
makepkg -si --noconfirm

rm -rf /tmp/paru

cd ~/archway

echo ""
echo "Essential tools installed!"
