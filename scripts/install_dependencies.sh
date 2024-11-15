#!/bin/bash

# Update package list and install prerequisites
echo "Updating package list..."
sudo apt-get update -y

# Install Docker if not already installed
if ! [ -x "$(command -v docker)" ]; then
    echo "Docker not found. Installing Docker..."
    sudo apt-get install -y docker.io
    sudo systemctl start docker
    sudo systemctl enable docker
else
    echo "Docker is already installed. Skipping installation."
fi

echo "All dependencies installed successfully."
