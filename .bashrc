# .bashrc

#-----------------------------------
# Global definitions
#-----------------------------------
# --> This code block checks for the presence of the /etc/bashrc file and if it exists, 
#runs it. The /etc/bashrc file is a bash shell configuration file that contains common settings for all 
#users on the system. Running this file applies the shell settings for the current user.
# Source global definitions

if [ -f /etc/bashrc ]; then
	. /etc/bashrc # --> Read settings from /etc/bashrc, if it exists.
fi

# --> This code block checks for the presence of the ~/.bash_aliases file (created by the user
#and contains user aliases) and if it exists, runs it. The .bash_aliases file contains user aliases 
#that can be used in the command line. Aliases are short names that can be used instead of long commands for convenience and quick input.
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases # --> Use ~/.bash_aliases, if it exists.
fi
	
#-----------------------------------
# --> Read settings from:
# --> The first command loads styles for the command line that can change the color and 
#formatting of text in the command line to make it more readable and user-friendly.
. /root/RhythmR-prep/bin/styles/.load_styles.sh 2>/dev/null ;

# --> The second command loads user-defined functions that can be used in the command line
#to automate certain tasks, such as creating shortcuts for long commands or performing complex tasks in multiple steps.
. /root/RhythmR-prep/bin/functions/.load_function.sh  2>/dev/null ;

	# --> These files are loaded when a new terminal window is opened, so that user settings
	and functions are available in the command line.


#-----------------------------------
# --> The "chmod +x -R /root/vdsetup.2/bin" command sets execute permissions (+x) for all files
#and directories (-R) inside the "/root/vdsetup.2/bin" directory. (this is a temporary solution that can be removed)
chmod +x -R /root/RhythmR-prep/bin 2>/dev/null ;
#-----------------------------------


#-----------------------------------
#  GLOBIGNORE ON/OFF for Asterix "*"
#-----------------------------------
# --> This function removes the GLOBIGNORE environment variable. The GLOBIGNORE variable points to 
#a list of wildcard patterns that should be ignored when expanding file names. If the GLOBIGNORE variable
#is not defined, file name expansion is based on all files in the current directory. Removing the GLOBIGNORE
#variable means that all files will be used for file name expansion.
function GLIG_ASTRX_OF() { unset GLOBIGNORE ; } ;

# --> This function sets the GLOBIGNORE environment variable to an asterisk (*). This means that when 
#expanding file names, all files and directories in the current directory will be ignored. When using this 
function, file name expansion can be performed only based on those files that match the specified pattern, ignoring all other files and directories.
function GLIG_ASTRX_ON() { GLOBIGNORE="*" ; } ;

	# --> Both of these functions can be useful when file name expansion needs to be performed
	#based on a certain pattern, ignoring unnecessary files and directories. For example, if you 
	#need to select all files with the ".txt" extension, you can use the "ls *.txt" command. 
	#If there are other files with different extensions in the current directory...
