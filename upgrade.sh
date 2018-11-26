#!/usr/bin/env bash
# TODO -- Finish this script --
# TODO build image if image doesnt exist
echo UPGRADE[1/3] - building new version
source run.sh
echo UPGRADE[2/3] - uninstalling old version
sudo dpkg -r code
echo UPGRADE[3/3] - installing new version
sudo dpkg -i out/linux/deb/amd64/deb/code*

