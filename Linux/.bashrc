echo "[Linux] .bashrc"

source /usr/local/git/contrib/completion/git-prompt.sh
source /usr/local/git/contrib/completion/git-completion.bash

PS1='\[\e]0;:\u@\h \w\a\]\n\[\e[0;36m\]\w\[\e[0;33m\]$(__git_ps1)\[\e[0;00m\] \$ '

if [ -d $HOME/.nvm ]; then
	export NVM_DIR="$HOME/.nvm"
	[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
	[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
fi