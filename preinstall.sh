#!/bin/bash

# upd
dnf update -y

# install & copy git
cd ~/
dnf install git -y
git clone https://github.com/licht8/RythmR-prep.git

chmod +x ~/RythmR-prep/bin/scripts/*
cd ~/RythmR-prep/bin/scripts/
./install.sh
