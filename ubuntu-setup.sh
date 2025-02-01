#!/bin/bash

# Rendszer frissítése
sudo apt update

# Librewolf repo hozzáadása és telepítése
sudo apt install -y extrepo
sudo extrepo enable librewolf
sudo apt update

# APT csomagok telepítése
sudo apt install -y \
    librewolf \
    curl \
    vlc \
    git \
    audacity \
    gnome-shell-extension-manager \
    qbittorrent \
    filezilla \
    inkscape \
    krita \
    zsh \
    npm \
    nodejs \
    neovim

# Synaptics DisplayLink driver telepítése
curl -O https://www.synaptics.com/sites/default/files/Ubuntu/pool/stable/main/all/synaptics-repository-keyring.deb
sudo apt install -y ./synaptics-repository-keyring.deb displaylink-driver
rm synaptics-repository-keyring.deb

# Snap alkalmazások telepítése
sudo snap install brave notesnook element-desktop rustdesk superproductivity steam dbeaver-ce postman

# Fejlesztői eszközök telepítése
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
curl -fsSL https://zed.dev/install.sh | sh

echo "Telepítés kész! Újraindítás ajánlott."
