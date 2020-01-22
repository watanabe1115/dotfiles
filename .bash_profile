# ============= #
# .bash_profile #
# ============= #

dir=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)

# 各環境のファイル読み込み
[ -f $dir/`uname`/.bash_profile ] && . $dir/`uname`/.bash_profile

if [ -f ~/.bashrc ] ; then
. ~/.bashrc
fi
