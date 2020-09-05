echo "[Git Bash] .bashrc"

alias ls='ls --color=auto --show-control-chars -1'
alias open='explorer'

PS1='\[\e]0;`uname`:\u@\h \w\a\]\n\[\e[0;36m\]\w\[\e[0;33m\]$(__git_ps1)\[\e[0;00m\] \$ '

declare -x LANG="ja_JP.UTF-8"

# ssh-agent
SSH_AGENT_FILE=$HOME/.ssh-agent
test -f $SSH_AGENT_FILE && source $SSH_AGENT_FILE
if ! ssh-add -l > /dev/null 2>&1; then
	ssh-agent > $SSH_AGENT_FILE
	source $SSH_AGENT_FILE
	ssh-add $HOME/.ssh/github_rsa
fi

# 文字化け対策
cmd //c chcp 65001