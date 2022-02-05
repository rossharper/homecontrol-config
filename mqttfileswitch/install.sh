#!/bin/bash

git clone git@github.com:rossharper/mqttfileswitch.git ~/homecontrol/mqttfileswitch

pushd ~/homecontrol/mqttfileswitch

npm install --production
sh installDaemon.sh

popd