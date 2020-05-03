#!/bin/bash

# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

# Make NVM work without shell reboot
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Install LTS node
nvm install --lts

# Install native build tools
sudo apt install build-essential

sudo npm install -g node-gyp
sudo npm install -g node-pre-gyp

npm install pm2 -g
pm2 install pm2-logrotate
pm2 startup
