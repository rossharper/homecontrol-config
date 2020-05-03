#!/bin/bash

git clone https://github.com/rossharper/heatingd.git ~/homecontrol/heatingd

pushd ~/homecontrol/heatingd

npm install --production
sh installDaemon.sh

popd