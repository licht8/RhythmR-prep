# .bash_profile

# Get the aliases and functions
# --> Import aliases and functions from the .bashrc file, if such a file exists
if [ -f /root/.bashrc ]; then
	. /root/.bashrc
fi

# Use ~/.bash_aliases
# --> Importing additional aliases
if [ -f /root/.bash_aliases ]; then
	. /root/.bash_aliases
fi


# User specific environment and startup programs
# --> Setting up the environment and running user programmes
PATH=$PATH:$HOME/bin

export PATH


# source /root/.bash_profile
