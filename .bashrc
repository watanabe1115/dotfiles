# ========#
# .bashrc #
# ========#

# 共通alias
alias la='ls -a -1'
alias ll='ls -l -1'
alias l='ls -CF'
alias repo='cd $(ghq root)/$(ghq list | fzy)'

dir=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)

_uname=uname
if [[ "$(uname)" == MINGW64_NT-10.0* ]]; then
	_uname="MINGW64_NT-10.0"
fi

export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
shopt -u histappend

# 各環境のファイル読み込み
[ -f $dir/$_uname/.bashrc ] && . $dir/$_uname/.bashrc
