#!/bin/bash
# Webpack Setup
# Eric Fish
# Usage:
#   chmod u+rx ./webpack_setup.sh && ./webpack_setup.sh

echo "Beginning webpack setup..."
echo "########################################"

# Install Webpack and loaders
echo "----------------------------------------"
echo "Installing webpack and loaders"
echo "----------------------------------------"

cd /srv/collabani
sudo npm install webpack -g
npm install css-loader style-loader postcss-loader -D

# Webpack config file
echo "----------------------------------------"
echo "Creating webpack config file"
echo "----------------------------------------"

touch webpack.config.js

# Add files and directories
echo "----------------------------------------"
echo "Adding workflow files and directories"
echo "----------------------------------------"

mkdir app public server
cd app && touch main.js
cd ../public && touch index.html styles.css
cd ..

echo "########################################"
echo "...Webpack setup complete!"

exit 0
