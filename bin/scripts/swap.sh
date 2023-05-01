#!/bin/bash

# Check the current swap memory
swap=$(free -m | awk '/^Swap:/ {print $2}')
echo "The current swap memory is $swap MB"

# Ask the user if they want to add more swap memory
read -p "Do you want to add more swap memory? [y/n] " answer

if [ "$answer" = "y" ]; then
  # Ask the user how much swap memory they want to add
  read -p "How much swap memory do you want to add? (in MB) " new_swap

  # Convert MB to KB
  new_swap=$(expr $new_swap \* 1024)

  # Add the new swap memory
  fallocate -l "${new_swap}M" /swapfile
  chmod 600 /swapfile
  mkswap /swapfile
  swapon /swapfile

  # Confirm the new swap memory
  new_swap=$(free -m | grep Swap | awk '{print $2}')
  echo "The new swap memory is $new_swap MB"
else
  echo "Exiting the script"
fi
