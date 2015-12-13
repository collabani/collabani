#!/bin/bash
# System Setup
# Chris Kline
# Usage:
#   chmod u+rx ./server_setup.sh
#   ./server_setup.sh

echo "Beginning server setup..."
echo "########################################"

# Prepare Virtual Machine
echo "----------------------------------------"
echo "preparing environment"
echo "----------------------------------------"

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install sudo curl git -y
# cd /srv && sudo mkdir collabani

# Nodejs Setup
echo "----------------------------------------"
echo "setting up nodejs"
echo "----------------------------------------"

cd /tmp && curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash -
sudo apt-get install nodejs -y
sudo npm install -g npm
cd /srv/collabani

# Install NPM Packages
echo "----------------------------------------"
echo "setting up npm & installing packages"
echo "----------------------------------------"

sudo npm init -y
sudo npm install node-static autoprefixer postcss lost -D

echo "########################################"
echo "...Server setup complete!"

exit 0
