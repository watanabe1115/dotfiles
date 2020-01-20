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
alias repo='cd $(ghq root)/$(ghq list | fzy)'

PS1='\[\e]0;:\u@\h \w\a\]\n\[\e[0;36m\]\w\[\e[0;33m\]$(__git_ps1)\[\e[0;00m\] \$ '
