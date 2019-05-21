#!/usr/bin/env bash

# make sure ssh-port-forward.sh is running
echo "Default password for pamAdmin is redhatpam1!"
git clone ssh://pamAdmin@localhost:8001/MySpace/malware

rm -rf src
rm -rf global
cd malware
mv * ../
cd ..
rm -rf malware
