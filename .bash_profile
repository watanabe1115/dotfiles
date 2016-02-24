export LS_COLORS="${LS_COLORS}:di=01;36"

if [ $(echo `uname` | grep -e 'MINGW') ]; then
	## Windows

	# ssh-agent
	eval `cat /var/ssh-agent.out`
	ssh-add ~/.ssh/github_rsa
    
elif [ `uname` = "Darwin" ]; then
	## mac

	# nvm
	source $(brew --prefix nvm)/nvm.sh

fi


if [ -f ~/.bashrc ] ; then
. ~/.bashrc
fi

