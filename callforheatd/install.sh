#!/bin/bash

git clone git@github.com:rossharper/callforheatd.git ~/homecontrol/callforheatd

pushd ~/homecontrol/callforheatd

npm install --production
sh installDaemon.sh

popd