echo "[Mac] .bash_profile"

# adb
export PATH=$PATH:$HOME/Library/Android/sdk/platform-tools

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if type "pyenv" > /dev/null 2>&1; then
	eval "$(pyenv init -)"
fi

# nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

export LS_COLORS="${LS_COLORS}:di=01;36"
