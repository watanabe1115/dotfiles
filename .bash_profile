# ============= #
# .bash_profile #
# ============= #

dir=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)

_uname=uname
if [[ "$(uname)" == MINGW64_NT-10.0* ]]; then
	_uname="MINGW64_NT-10.0"
fi

# 各環境のファイル読み込み
[ -f $dir/$_uname/.bash_profile ] && . $dir/$_uname/.bash_profile

if [ -f ~/.bashrc ] ; then
. ~/.bashrc
fi
