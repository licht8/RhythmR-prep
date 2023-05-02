# .bash_profile

# Get the aliases and functions
# --> Import aliases and functions from the .bashrc file, if it exists
if [ -f /root/.bashrc ]; then
	. /root/.bashrc
fi

# Use ~/.bash_aliases
# --> Import additional aliases
if [ -f /root/.bash_aliases ]; then
	. /root/.bash_aliases
fi


# User specific environment and startup programs
# --> Environment settings and launching of user programs
PATH=$PATH:$HOME/bin

export PATH


# source /root/.bash_profile
