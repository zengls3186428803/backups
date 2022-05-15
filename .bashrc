# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias g++='g++ -std=c++11 -finput-charset=UTF-8 -fexec-charset=UTF-8'
alias c++='c++ -std=c++11'
alias ls='ls --color'
PS1="\[\e[01;32m\][\u@\h \W]\$\[\e[0m\]"
export PS1
PATH="$PATH:."
