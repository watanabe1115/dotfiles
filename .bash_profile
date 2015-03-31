export LS_COLORS="${LS_COLORS}:di=01;36"

if [ `uname` = "Darwin" ]; then

:

elif [ `uname` = "MINGW32_NT-6.1" ]; then

	#ssh-agent
	eval `cat /var/ssh-agent.out`
	ssh-add ~/.ssh/github_rsa

fi
