#!/usr/bin/env bash
echo STARTING BUILD
cd vscode

echo == pulling repo ==
git pull

echo == copying in custom data ==
cp -rf ../volume/custom_data/* ./

echo == installing dependencies ==
yarn

echo == compiling ==
yarn run gulp vscode-linux-x64-min

echo == packaging ==
yarn run gulp vscode-linux-x64-build-deb
yarn run gulp vscode-linux-x64-build-rpm

echo == writing out result ==
rm -rf ../volume/out*
cp -rf .build ../volume/out

