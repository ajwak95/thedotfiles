#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias mkdir='mkdir -p'





if [[ ${EUID} == 0 ]] ; then
		PS1='\[\033[01;31m\]\h\[\033[01;34m\] \W \$\[\033[00m\] '

#	PS1='\[\e[1;31m\]\u@\H\[\e[m\] \[\e[1;34m\]\w\[\e[
else
	PS1='\[\e[1;32m\]\u@\H\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[0;31m\]\$\[\e[m\] '
fi
