#!/bin/bash

git clone https://github.com/rossharper/heatingd.git ~/homecontrol/heatingd

pushd ~/homecontrol/heatingd

npm install
sh installDaemon.sh

popd