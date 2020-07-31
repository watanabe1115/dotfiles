# ========#
# .zshrc #
# ========#

dir="$(cd "$(dirname "${BASH_SOURCE:-${(%):-%N}}")"; pwd)"

# 各環境のファイル読み込み
[ -f $dir/`uname`/.zshrc ] && . $dir/`uname`/.zshrc
