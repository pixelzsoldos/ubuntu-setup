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
    gimp \
    gnome-tweaks \
    zsh \
    npm \
    nodejs \
    dosbox \
    retroarch \
    keepassxc

# Ensure Snap daemon is running
sudo systemctl enable --now snapd

# Install Snap applications (one by one to avoid errors)
sudo snap install brave
sudo snap install notesnook
sudo snap install element-desktop
sudo snap install rustdesk
sudo snap install superproductivity
sudo snap install steam
sudo snap install dbeaver-ce
sudo snap install postman
sudo snap install code --classic
sudo snap install spotify
sudo snap install slack --classic
sudo snap install discord
sudo snap install obs-studio
sudo snap install signal-desktop
sudo snap install session-desktop
sudo snap install telegram-desktop
sudo snap install cryptomator

# Install Google Chrome
echo "Installing Google Chrome..."
wget -q -O /tmp/google-chrome-stable_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y /tmp/google-chrome-stable_current_amd64.deb
rm /tmp/google-chrome-stable_current_amd64.deb

echo "Installation complete! A restart is recommended."