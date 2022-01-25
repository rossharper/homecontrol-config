#!/bin/bash

git clone https://github.com/rossharper/callforheatd.git ~/homecontrol/callforheatd

pushd ~/homecontrol/callforheatd

npm install --production
sh installDaemon.sh

popd