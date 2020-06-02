#!/bin/bash

# Setup nodesource repository
sudo curl -sL https://deb.nodesource.com/setup_12.x | sudo bash -

# Install node
sudo apt-get install -y nodejs

# Install native build tools
sudo apt install build-essential
sudo npm install -g node-gyp
sudo npm install -g node-pre-gyp

sudo npm install pm2 -g
pm2 install pm2-logrotate
pm2 startup
