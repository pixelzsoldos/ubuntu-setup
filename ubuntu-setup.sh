#!/bin/bash

# Synaptics kulcs letöltése és telepítése
curl -O https://www.synaptics.com/sites/default/files/Ubuntu/pool/stable/main/all/synaptics-repository-keyring.deb
sudo apt install -y ./synaptics-repository-keyring.deb

# Librewolf telepítése az extrepo segítségével
sudo apt update
sudo apt install -y extrepo
sudo extrepo enable librewolf
sudo apt update
sudo apt install -y librewolf

# Alkalmazások telepítése apt-tal
sudo apt install -y \
    displaylink-driver \
    vlc \
    git \
    audacity \
    gnome-shell-extension-manager \
    qbittorrent \
    filezilla \
    inkscape \
    krita \
    fontbase \
    dbeaver \
    postman \
    xnviewmp \
    etcher \
    zsh \
    npm \
    nodejs

# NVM telepítése
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash

# Snap-alapú alkalmazások telepítése
sudo snap install brave notesnook element-desktop rustdesk superproductivity steam

# Cursor AI telepítése
curl -fsSL https://gist.githubusercontent.com/msanjeevkumar/edbfebbae976ab7b2cb2e4f22cb6b374/raw/005490f3c968b68645bb649612cb5303fdd4a48e/cursor_setup_and_update.sh | bash

# Zed telepítése
curl -fsSL https://zed.dev/install.sh | sh

# Takarítás
rm synaptics-repository-keyring.deb

echo "Telepítés kész! Újraindítás ajánlott."
