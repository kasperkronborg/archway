#!/usr/bin/env bash
# Arch Linux post-install setup script
# Run this after chroot into your new installation

set -e

echo "Setting locale to en_DK.UTF-8..."
# Uncomment the locale in /etc/locale.gen
sed -i 's/^#en_DK.UTF-8/en_DK.UTF-8/' /etc/locale.gen

# Generate locales
locale-gen

# Set system locale
echo "LANG=en_DK.UTF-8" > /etc/locale.conf

echo "Installing NetworkManager..."
pacman -S --noconfirm --needed networkmanager

echo "Enabling NetworkManager service..."
systemctl enable NetworkManager

echo ""
echo "Post-install setup complete!"
echo "- Locale set to en_DK.UTF-8"
echo "- NetworkManager will start on next boot"
echo ""
