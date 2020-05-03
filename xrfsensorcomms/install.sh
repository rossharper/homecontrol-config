#!/bin/bash

git clone https://github.com/rossharper/xrfsensorcomms.git ~/homecontrol/xrfsensorcomms

pushd ~/homecontrol/xrfsensorcomms

# THE FOLLOWING IS DANGEROUS...
# Running npm under sudo, requires trust in serialport
sudo npm install serialport -g --unsafe-perm --build-from-source

npm install
sh installDaemon.sh

popd