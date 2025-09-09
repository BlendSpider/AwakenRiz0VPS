#!/bin/bash
# Pterodactyl Auto Installer (4–8GB VPS Optimized)
# Author: AwakenRiz0 Custom Build

GREEN="\e[32m"
RESET="\e[0m"

echo -e "${GREEN}🚀 Starting Pterodactyl Auto Installer by AwakenRiz0...${RESET}"

# Update system
apt update -y && apt upgrade -y

# Install basic packages
apt install -y curl wget sudo unzip tar

# Run official community installer
bash <(curl -s https://raw.githubusercontent.com/vilhelmprytz/pterodactyl-installer/master/install.sh)

# Enable 24/7 services
systemctl enable --now pteroq.service
systemctl enable --now wings.service

echo -e "${GREEN}✅ Installation Finished!${RESET}"
echo -e "👉 Now open: https://panel8.hero9.qzz.io/"
