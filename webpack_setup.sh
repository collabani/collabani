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
sudo npm install webpack-dev-server -g
sudo npm install -D webpack webpack-dev-server css-loader style-loader postcss-loader html-loader
sudo npm start

echo "########################################"
echo "...Webpack setup complete!"

exit 0
