#!/bin/bash

git clone https://github.com/rossharper/raspberrysauce.git ~/homecontrol/raspberrysauce

cp rapsberrysauce/config.js ~/homecontrol/raspberrysauce/webapp/config/config.js
cp raspberrysauce/sslconfig.js ~/homecontrol/rapsberrysauce/servers/sslconfig.js

pushd ~/homecontrol/raspberrysauce

npm install --production
sh installDaemon.sh

popd
