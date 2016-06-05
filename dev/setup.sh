#!/bin/bash
set -e

# determine local paths
pushd $(dirname $0) >/dev/null
DEV_DIR=$PWD
cd ..
SRC_DIR=$PWD
popd >/dev/null

pip install -U -r ${DEV_DIR}/requirements.txt
./INSTALL.sh develop

sudo ./INSTALL.sh develop

cd /var/www/html/ipa3/An

sudo bash ResignApps.sh