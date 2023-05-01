#!/bin/bash

# upd
dnf update -y

# install & copy git
cd ~/
dnf install git -y
git clone https://github.com/licht8/RythmR-prep.git

cd ~/RythmR-prep/bin/scripts/
chmod +x install.sh
./install.sh
