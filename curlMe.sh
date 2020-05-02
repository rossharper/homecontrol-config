#!/bin/bash

set -x

git clone https://github.com/rossharper/homecontrol-config.git

cd homecontrol-config

. install.sh

set +x