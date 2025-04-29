#!/bin/bash

# Ubuntu Setup Script

# This script automates the setup of an Ubuntu system by installing essential applications, developer tools, and utilities.

# Update the system
sudo apt update

# Ensure snapd is installed
sudo apt install -y snapd

# Install APT packages
sudo apt install -y \
    curl \
    vlc \
    git \
    audacity \
    gnome-shell-extension-manager \
    gnome-calendar \
    gnome-weather \
    qbittorrent \
    filezilla \
    inkscape \
    zsh \
    npm \
    nodejs

# Ensure Snap daemon is running
sudo systemctl enable --now snapd

# Install Snap applications
sudo snap install \
    brave \
    notesnook \
    element-desktop \
    rustdesk \
    superproductivity \
    steam \
    dbeaver-ce \
    postman \
    code --classic \
    spotify \
    slack --classic \
    discord

# Install GNOME Shell Extensions
echo "Installing GNOME Shell Extensions..."
EXTENSIONS=(
    "https://extensions.gnome.org/extension-data/user-themegnome-shell-extensions.gcampax.github.com.v42.shell-extension.zip"
    "https://extensions.gnome.org/extension-data/dash-to-dockgnome-shell-extensions.gcampax.github.com.v72.shell-extension.zip"
    "https://extensions.gnome.org/extension-data/weather-oclockjenslody.de.v27.shell-extension.zip"
)
EXTENSIONS_DIR="$HOME/.local/share/gnome-shell/extensions"

mkdir -p "$EXTENSIONS_DIR"

for EXTENSION_URL in "${EXTENSIONS[@]}"; do
    EXTENSION_ZIP=$(basename "$EXTENSION_URL")
    wget -O "/tmp/$EXTENSION_ZIP" "$EXTENSION_URL"
    unzip -o "/tmp/$EXTENSION_ZIP" -d "$EXTENSIONS_DIR"
    rm "/tmp/$EXTENSION_ZIP"
done

# Restart GNOME Shell to apply extensions (requires user confirmation)
echo "GNOME Shell extensions installed. Please restart GNOME Shell to apply changes."

# Install developer tools
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
curl -fsSL https://zed.dev/install.sh | sh

echo "Installation complete! A restart is recommended."