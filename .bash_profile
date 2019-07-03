# ============= #
# .bash_profile #
# ============= #

os=$(uname)
if [ ${os:0:5} == 'MINGW' ]; then
	echo "[Git Bash] .bash_profile"

	export PATH=$PATH:"/c/Program Files/Mono/bin"
    
elif [ ${os} == 'Darwin' ]; then
	echo "[Mac] .bash_profile"

	# nvm
	# source ~/.nvm/nvm.sh
	# export NVM_DIR="$HOME/.nvm"
	# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm


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

	# nodebrew
	export PATH=$HOME/.nodebrew/current/bin:$PATH

	export LS_COLORS="${LS_COLORS}:di=01;36"

elif [ ${os} == 'Linux' ]; then
	echo "[Linux] .bash_profile"

	# eval `ssh-agent`
	# ssh-add ~/.ssh/github_rsa
fi

if [ -f ~/.bashrc ] ; then
. ~/.bashrc
fi


# NODIST_BIN_DIR__=$(echo "$NODIST_PREFIX" | sed -e 's,\\,/,g')/bin; if [ -f "$NODIST_BIN_DIR__/nodist.sh" ]; then . "$NODIST_BIN_DIR__/nodist.sh"; fi; unset NODIST_BIN_DIR__;
