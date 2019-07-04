# ========#
# .bashrc #
# ========#

# alias
alias la='ls -a -1'
alias ll='ls -l -1'
alias l='ls -CF'

os=$(uname)
if [ ${os:0:5} == 'MINGW' ]; then
	echo "[Git Bash] .bashrc"

	alias ls='ls --color=auto --show-control-chars -1'
	alias open='explorer'

	PS1='\[\e]0;`uname`:\u@\h \w\a\]\n\[\e[0;36m\]\w\[\e[0;33m\]$(__git_ps1)\[\e[0;00m\] \$ '

	# ssh-agent
	SSH_AGENT_FILE=$HOME/.ssh-agent
	test -f $SSH_AGENT_FILE && source $SSH_AGENT_FILE
	if ! ssh-add -l > /dev/null 2>&1; then
		ssh-agent > $SSH_AGENT_FILE
		source $SSH_AGENT_FILE
		ssh-add $HOME/.ssh/github_rsa
	fi

elif [ ${os} == 'Darwin' ]; then
	echo "[Mac] .bashrc"
	
	# macOS Sierra用
	if [ -e /usr/local/git/contrib/completion/ ]; then
		source /usr/local/git/contrib/completion/git-prompt.sh
		source /usr/local/git/contrib/completion/git-completion.bash
	fi
	# macOS Mojave用
	if [ -e /usr/local/etc/bash_completion.d ]; then
		source /usr/local/etc/bash_completion.d/git-prompt.sh
		source /usr/local/etc/bash_completion.d/git-completion.bash
	fi

	alias ls='ls -G -1'

	PS1='\[\e]0;:\u@\h \w\a\]\n\[\e[0;36m\]\w\[\e[0;33m\]$(__git_ps1)\[\e[0;00m\] \$ '

elif [ ${os} == 'Linux' ]; then
	echo "[Linux] .bashrc"
	
	source /usr/local/git/contrib/completion/git-prompt.sh
	source /usr/local/git/contrib/completion/git-completion.bash

	PS1='\[\e]0;:\u@\h \w\a\]\n\[\e[0;36m\]\w\[\e[0;33m\]$(__git_ps1)\[\e[0;00m\] \$ '

	if [ -d $HOME/.nvm ]; then
		export NVM_DIR="$HOME/.nvm"
		[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
		[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
	fi
fi

