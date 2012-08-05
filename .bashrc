#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [[ ${EUID} == 0 ]] ; then
		PS1='\[\033[01;31m\]\h\[\033[01;34m\] \W \$\[\033[00m\] '

#	PS1='\[\e[1;31m\]\u@\H\[\e[m\] \[\e[1;34m\]\w\[\e[
else
	PS1='\[\e[1;32m\]\u@\H\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[0;31m\]\$\[\e[m\] '
fi

if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

#Determine if FreeBSD or Linux
unamestr=$(uname)

#Make sure the text fits in the console
shopt -s checkwinsize

#Color only in xterm-color
case "$TERM" in
	xterm-color) color_prompt=yes;;
esac

alias mkdir='mkdir -p'

#Shows child processes 
alias ps='ps auxf'

#Date with date, weekday, time and zoneinfo
alias date='date "+%Y-%m-%d %A	%T %Z"'

#Color ls
case $unamestr in
'Linux' )
	alias ls='ls -AFal --color=auto'
	;;
'FreeBSD' )
	alias ls='ls -AFGal' 
	;;
esac

#Wrap nano text
alias nano='nano -w'

#Color grep
alias grep='grep --color=auto'

#Interactive rm 
alias rm='rm -iv'

#Verbose cp
alias cp='cp -iv'

#More comprehendable df output
alias df='df -h'

#More comprehendable du output
alias du='du -sh -c'

###########
##EXPORTS##
###########
case $unamestr in
'FreeBSD' )
	PATH="/usr/local/bin:$PATH"
	;;
esac

export PATH

export EDITOR=nano

