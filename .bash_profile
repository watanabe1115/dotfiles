export LS_COLORS="${LS_COLORS}:di=01;36"

if [ `uname` = "Darwin" ]; then

	if [ -f ~/.bashrc ] ; then
	. ~/.bashrc
	fi

	source $(brew --prefix nvm)/nvm.sh

elif [ `uname` = "MINGW32_NT-6.1" -o `uname` = "MINGW32_NT-6.2" ]; then

	#ssh-agent
	eval `cat /var/ssh-agent.out`
	ssh-add ~/.ssh/github_rsa

fi
