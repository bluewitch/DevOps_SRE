#!/bin/bash

# Update system packages
sudo apt-get update

# Install Firefox - Open-source web browser
sudo apt-get install firefox -y

# Install LibreWolf - Privacy-oriented fork of Firefox
sudo add-apt-repository ppa:librewolf-community/release
sudo apt-get update
sudo apt-get install librewolf -y

# Install Mullvad VPN - Privacy-focused VPN service
wget https://mullvad.net/media/app/MullvadVPN-2021.8_amd64.deb
sudo dpkg -i MullvadVPN-2021.8_amd64.deb
sudo apt-get install -f -y
rm MullvadVPN-2021.8_amd64.deb

# Install Chrome - Web browser by Google
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get install -f -y
rm google-chrome-stable_current_amd64.deb

# Install Brave - Privacy-focused web browser
sudo apt install apt-transport-https curl -y
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt-get update
sudo apt-get install brave-browser -y

# Install I2Pd - Anonymous overlay network
sudo apt-get install i2pd -y

# Install TOR - Anonymity network for web browsing
sudo apt-get install tor -y

echo "Privacy-focused applications installation completed successfully!"
