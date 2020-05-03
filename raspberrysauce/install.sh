#!/bin/bash

git clone https://github.com/rossharper/raspberrysauce.git ~/homecontrol/raspberrysauce

cp raspberrysauce/config.js ~/homecontrol/raspberrysauce/webapp/config/config.js
cp raspberrysauce/sslconfig.js ~/homecontrol/rapsberrysauce/servers/config/sslconfig.js

pushd ~/homecontrol/raspberrysauce

npm install --production
sh installDaemon.sh

# Configure UFW
sudo ufw allow 80
sudo ufw allow 443
sudo ufw allow 8080
sudo ufw allow 4443

sudo sed -i.bak -e 's/\*filter/# BEGIN WEB REDIRECTION INSERTION\n*nat\n:PREROUTING ACCEPT [0:0]\n-A PREROUTING -p tcp --dport 80 -j REDIRECT --to-port 8080\n-A PREROUTING -p tcp --dport 443 -j REDIRECT --to-port 4443\nCOMMIT\n# END WEB REDIRECTION INSERTION\n\n*filter/' /etc/ufw/before.rules

popd
