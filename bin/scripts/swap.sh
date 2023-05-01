#!/bin/bash

# Request the desired size of the SWAP file in gigabytes
read -p "Enter the desired size of the SWAP file in gigabytes (e.g. 2): " SWAP_SIZE_GB

# Find an existing SWAP file or create a new one
if [ -f /swapfile ]; then
    echo "An existing SWAP file was found."
else
    echo "Creating a new SWAP file..."
    fallocate -l ${SWAP_SIZE_GB}G /swapfile
    chmod 600 /swapfile
    mkswap /swapfile
    swapon /swapfile
    echo "/swapfile none swap sw 0 0" >> /etc/fstab
    echo "The SWAP file has been created and enabled."
    exit 0
fi

# Get the current size of the SWAP file
CURRENT_SWAP_SIZE=$(free -h | awk '/^Swap:/ { print $2 }' | sed 's/G//')

# If the current size is smaller than the desired size, then increase it
if (( $(echo "$CURRENT_SWAP_SIZE < $SWAP_SIZE_GB" | bc -l) )); then
    echo "The current size of the SWAP file is $CURRENT_SWAP_SIZE GB."
    echo "Increasing the SWAP file size to ${SWAP_SIZE_GB} GB..."
    swapoff /swapfile
    fallocate -l ${SWAP_SIZE_GB}G /swapfile
    chmod 600 /swapfile
    mkswap /swapfile
    swapon /swapfile
    echo "The SWAP file size has been increased to ${SWAP_SIZE_GB} GB."
else
    echo "The current size of the SWAP file is already sufficient ($CURRENT_SWAP_SIZE GB)."
fi

# Display information about the size of the SWAP memory
free -h | grep -E '^(Mem|Swap):'
