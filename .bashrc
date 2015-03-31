#\[
#	\e]0;
#		MINGW:\u@\h \w
#	\a
#\]
#\n
#[
#\[\e[0;36m\]
#	\W
#\[\e[0;33m\]
#	$(__git_ps1)
#\[\e[0;00m\]
#]
#\$


#alias
alias ls='ls --color=auto --show-control-chars -1'
alias la='ls -a -1'
alias ll='ls -l -1'
alias l='ls -CF'

if [ `uname` = "Darwin" ]; then

	PS1='\[\e]0;:\u@\h \w\a\]\n\[\e[0;36m\]\w\[\e[0;33m\]$(__git_ps1)\[\e[0;00m\] \$ '

elif [ `uname` = "MINGW32_NT-6.1" ]; then

	PS1='\[\e]0;MINGW32:\u@\h \w\a\]\n\[\e[0;36m\]\w\[\e[0;33m\]$(__git_ps1)\[\e[0;00m\] \$ '

	alias open='explorer'
	
fi

