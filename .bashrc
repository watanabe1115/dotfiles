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

os=$(uname)
if [ ${os:0:5} == 'MINGW' ]; then
	## echo "Git Bash"

	PS1='\[\e]0;`uname`:\u@\h \w\a\]\n\[\e[0;36m\]\w\[\e[0;33m\]$(__git_ps1)\[\e[0;00m\] \$ '

	alias ls='ls --color=auto --show-control-chars -1'
	alias open='explorer'

elif [ ${os} == 'Darwin' ]; then
	## echo "mac"
	
	source /usr/local/git/contrib/completion/git-prompt.sh
	source /usr/local/git/contrib/completion/git-completion.bash

	alias ls='ls -G -1'

	PS1='\[\e]0;:\u@\h \w\a\]\n\[\e[0;36m\]\w\[\e[0;33m\]$(__git_ps1)\[\e[0;00m\] \$ '

	# perl
	PATH="$HOME/perl5/bin${PATH:+:${PATH}}"; export PATH;
	PERL5LIB="$HOME/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
	PERL_LOCAL_LIB_ROOT="$HOME/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
	PERL_MB_OPT="--install_base \"$HOME/perl5\""; export PERL_MB_OPT;
	PERL_MM_OPT="INSTALL_BASE=$HOME/perl5"; export PERL_MM_OPT;

elif [ ${os} == 'Linux' ]; then
	## echo "bash on Ubuntu on Windows"

	PS1='\[\e]0;:\u@\h \w\a\]\n\[\e[0;36m\]\w\[\e[0;33m\]$(__git_ps1)\[\e[0;00m\] \$ '

fi
