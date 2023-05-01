# Script for initial preparation of fresh VDS based on CentOS 8 Stream

cd ~ ; (rm -rf ~/RythmR-prep ~/.GitHub_Repo ~/bin/*) &>/dev/null ; (dnf install git -y) &>/dev/null ; (git clone https://github.com/licht8/RythmR-prep.git) ; (cd RythmR-prep/bin/scripts/) ; (chmod +x install.sh) ; ./install
