#!/bin/bash

# Check the current swap memory
swap=$(free | grep Swap | awk '{print $2}')
echo "The current swap memory is $swap KB"

# Ask the user if they want to add more swap memory
read -p "Do you want to add more swap memory? [y/n] " answer

if [ "$answer" = "y" ]; then
  # Ask the user how much swap memory they want to add
  read -p "How much swap memory do you want to add? (in MB) " new_swap

  # Convert MB to KB
  new_swap=$(expr $new_swap \* 1024)

  # Add the new swap memory
  sudo fallocate -l $new_swap /swapfile
  sudo chmod 600 /swapfile
  sudo mkswap /swapfile
  sudo swapon /swapfile

  # Confirm the new swap memory
  new_swap=$(free | grep Swap | awk '{print $2}')
  echo "The new swap memory is $new_swap KB"
else
  echo "Exiting the script"
fi
