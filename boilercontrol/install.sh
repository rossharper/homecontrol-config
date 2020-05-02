#!/bin/bash

sudo apt-get install wiringpi

git clone https://github.com/rossharper/boilercontrol.git ~/homecontrol/boilercontrol

pushd ~/homecontrol/boilercontrol

make PLATFORM=pi
sudo make install PLATFORM=pi

popd
