#!/bin/bash

# Check if 'curl' command is available
if ! type -p curl >/dev/null; then
  # If 'curl' is not found, update the package lists and install 'curl'
  sudo apt update
  sudo apt install curl -y
fi

# Download the GPG key for the GitHub CLI package and save it to /usr/share/keyrings/githubcli-archive-keyring.gpg
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg

# Set read permissions for the GPG key file
sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg

# Add the GitHub CLI package repository to /etc/apt/sources.list.d/github-cli.list
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null

# Update the package lists with the newly added repository
sudo apt update

# Install the GitHub CLI package
sudo apt install gh -y
