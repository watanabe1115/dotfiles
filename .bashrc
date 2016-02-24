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


# alias
alias la='ls -a -1'
alias ll='ls -l -1'
alias l='ls -CF'

if [ $(echo `uname` | grep -e 'MINGW') ]; then
	## Windows

	PS1='\[\e]0;`uname`:\u@\h \w\a\]\n\[\e[0;36m\]\w\[\e[0;33m\]$(__git_ps1)\[\e[0;00m\] \$ '

	alias ls='ls --color=auto --show-control-chars -1'
	alias open='explorer'

elif [ `uname` = "Darwin" ]; then
	## mac
	
	source /usr/local/git/contrib/completion/git-prompt.sh
	source /usr/local/git/contrib/completion/git-completion.bash

	alias ls='ls -G -1'

	PS1='\[\e]0;:\u@\h \w\a\]\n\[\e[0;36m\]\w\[\e[0;33m\]$(__git_ps1)\[\e[0;00m\] \$ '

fi
