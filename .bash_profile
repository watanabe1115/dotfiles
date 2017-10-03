export LS_COLORS="${LS_COLORS}:di=01;36"

os=$(uname)
if [ ${os:0:5} == 'MINGW' ]; then
	## Git Bash

	# ssh-agent
	eval `cat /var/ssh-agent.out`
	ssh-add ~/.ssh/github_rsa
    
elif [ ${os} == 'Darwin' ]; then
	## mac

	# nvm
#	source ~/.nvm/nvm.sh
#	export NVM_DIR="$HOME/.nvm"
#	[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

	# nodebrew
#	export PATH=$HOME/.nodebrew/current/bin:$PATH

	# adb
	export PATH=$PATH:$HOME/Library/Android/sdk/platform-tools
	# PlantUML
	export PATH=$PATH:$HOME/Library/PlantUML

	# pyenv
	export PYENV_ROOT="$HOME/.pyenv"
	export PATH="$PYENV_ROOT/bin:$PATH"
	eval "$(pyenv init -)"

	# ant
	export ANT_HOME="/usr/local/bin/ant/"
	export PATH="$PATH:$ANT_HOME/bin"

elif [ ${os} == 'Linux' ]; then
      ## bash on Ubuntu on Windows

      :
fi

if [ -f ~/.bashrc ] ; then
. ~/.bashrc
fi

