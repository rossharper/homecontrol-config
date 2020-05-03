#!/bin/bash

set -x

mkdir -p ~/homecontrol

sudo mkdir -p /var/lib/homecontrol
sudo chown -R $USER /var/lib/homecontrol
mkdir -p ~/homecontrol/logs

. node/install.sh

. xrfsensorcomms/install.sh

. boilercontrol/install.sh

. heatingd/install.sh

set +x