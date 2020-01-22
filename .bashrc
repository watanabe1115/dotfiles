# ========#
# .bashrc #
# ========#

# 共通alias
alias la='ls -a -1'
alias ll='ls -l -1'
alias l='ls -CF'
alias repo='cd $(ghq root)/$(ghq list | fzy)'

dir=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)

# 各環境のファイル読み込み
[ -f $dir/`uname`/.bashrc ] && . $dir/`uname`/.bashrc
