# .bash_aliases

# --> Use ~/.bash_ali_hosts
. ~/.bash_ali_hosts ;

#-----------------------------------
# User specific aliases and functions
# unalias name - delete alias
#-----------------------------------

### df -h , free -h , ip , who , type
### command pwd (от англ. "print working directory") 
### In Linux is used to display the current working directory.

alias lip='lip-f'
alias who='echo -e "\n/usr/bin/who -H\n" &&  who -H | bat  --paging=never -l c -p && wport ssh && ( ttb=$( echo -e "\n ⎧ kill proccess по PID: # killl \"PID\" \n ⎩ man: # killl -h" ) && lang="nix" && bpn_p_lang) && etc_passwd ;'


### clear , update /root/.bashrc , ls , cd , tree

alias urc='. /root/.bashrc'
alias vcc='vsync && sleep 2 && . /root/.bashrc && clear && clear && ttb=$(echo -e "\n VDSetup $(cat /root/vdsetup.2/bin/VERSION) # vsync - for update (or rm_clone)\n") && lang_cr ; bpn_p_lang'
alias l.='ls -lhd --color=auto .*'
alias l..='ls -lhd --color=auto .* *'
alias ll='ls -lh --color=auto'
alias lll='tree -Csuh | more' 
alias ls='ls -h --color=auto'
alias ff='GLIG_ASTRX_ON && ff-f'
alias ..='cd ..'
alias path='echo -e ${PATH//:/\\n}'


### grep , wget

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias xzegrep='xzegrep --color=auto'
alias xzfgrep='xzfgrep --color=auto'
alias xzgrep='xzgrep --color=auto'
alias zegrep='zegrep --color=auto'
alias zfgrep='zfgrep --color=auto'
alias zgrep='zgrep --color=auto'
alias wget='wget -c'


# cp , mv , mc , rm , mkdir
alias cp='cp -i'
alias mv='mv -i'
alias mc='. /usr/libexec/mc/mc-wrapper.sh'


### Do not delete the root and prompt before deleting files

alias rm='rm -I --preserve-root'


### Protection against changing permissions for /

alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
alias mkdir='mkdir -p'


### test-labz sync & rm vdsetup

alias tsync='/root/test-lab/tsync.sh'
alias rm_vdsetup='/root/vdsetup.2/bin/utility/rm_vdsetup.sh'
