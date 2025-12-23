#!/usr/bin/env bash
# Install NVIDIA drivers
# Usage: ./setup/nvidia.sh

set -e

# Check if nvidia GPU is present
if ! lspci | grep -i nvidia > /dev/null; then
    echo "No NVIDIA GPU detected. Skipping installation."
    exit 0
fi

echo "NVIDIA GPU detected. Installing drivers..."

echo "Installing kernel headers..."
sudo pacman -S --noconfirm --needed linux-headers

echo "Installing NVIDIA drivers (DKMS)..."
sudo pacman -S --noconfirm --needed \
    nvidia-dkms \
    nvidia-utils \
    nvidia-settings

echo "Rebuilding initramfs..."
sudo mkinitcpio -P

echo ""
echo "NVIDIA driver installation complete!"
echo "Reboot required for changes to take effect."
echo ""
echo "Run 'reboot' when ready."
