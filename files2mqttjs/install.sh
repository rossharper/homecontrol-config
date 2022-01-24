#!/bin/bash

git clone https://github.com/rossharper/files2mqttjs.git ~/homecontrol/files2mqttjs

pushd ~/homecontrol/files2mqttjs

npm install --production
sh installDaemon.sh

popd