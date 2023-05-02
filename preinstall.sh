#!/bin/bash
# upd
dnf update -y

# install & copy git
cd ~/
dnf install git -y
git clone https://github.com/licht8/RhythmR-prep.git

chmod +x ~/RhythmR-prep/bin/scripts/*
cd ~/RhythmR-prep/bin/scripts/
./install.sh
