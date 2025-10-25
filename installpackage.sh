#!/bin/bash

<<info
This Script will install the packages that you pass in arguments
eg. ./installpackge.sh nginx
./installpackage.sh docker.io
info

echo "installing $1"

sudo apt update
sudo apt upgrade -y

sudo apt install $1 -y

echo "done"
