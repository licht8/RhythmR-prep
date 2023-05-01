#!/bin/bash

# Check if the script is running as root
if [ "$EUID" -ne 0 ]
  then echo "This script must be run as root"
  exit
fi

dnf update -y
dnf install -y epel-release git curl tar mc net-tools iftop htop atop bzip2 traceroute gdisk lsof

# Выключаем SELinux
setenforce 0
sestatus
