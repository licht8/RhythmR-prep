#!/bin/bash

# --> This function checks if the script is running with superuser (root) privileges in Linux.

# Definition of the run_as_root() function
function run_as_root() {
    # Check if the script is running with superuser (root) privileges
    if [[ "$EUID" -ne 0 ]]; then
        # Display an error message on the screen
        echo "Error: Script must be run as root. $(error_exit_MSG)"
    fi
}

# --> The first line if [[ "$EUID" -ne 0 ]]; then checks if the user ID running the script (EUID) is equal to zero, which corresponds to the root user ID. If the EUID value is not equal to zero, then this means that the script is not running with root privileges and the code continues to execute.

# --> Overall, this code is used to protect the script from accidental execution with insufficient access privileges, which can lead to unwanted consequences.
