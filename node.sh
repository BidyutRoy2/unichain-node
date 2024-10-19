#!/bin/bash

echo "-----------------------------------------------------------------------------"
curl -s https://raw.githubusercontent.com/BidyutRoy2/BidyutRoy2/main/logo.sh | bash
echo "-----------------------------------------------------------------------------"

# Clear the terminal for better readability
clear

echo "-----------------------------------------------------------------------------"
echo "Starting installation process..."
echo "-----------------------------------------------------------------------------"

# Step 1: Update and Upgrade Packages
echo "Updating package index and upgrading installed packages..."
sudo apt update && sudo apt upgrade -y

# Step 2: Install the Docker installation script
echo "Installing Docker installation script..."
source <(wget -O - https://raw.githubusercontent.com/BidyutRoy2/BidyutRoy2/refs/heads/main/installation/docker.sh)

# Step 3: Clone the Uniswap Unichain node repository
echo "Cloning the Uniswap Unichain node repository..."
git clone https://github.com/Uniswap/unichain-node

# Change to the unichain-node directory
cd unichain-node

# Open .env.sepolia for editing
echo "Opening .env.sepolia for configuration..."
nano .env.sepolia

echo "-----------------------------------------------------------------------------"
echo "Installation and setup completed! Please configure your .env.sepolia file."
echo "-----------------------------------------------------------------------------"
