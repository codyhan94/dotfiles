# fix font issues
export GDK_USE_XFT=1

# Append last command to histfile
export PROMPT_COMMAND="history -a; history -n; $PROMPT_COMMAND"

# Homebrewed python packages
#export PYTHON_PATH=/usr/local/Cellar

export EDITOR="/usr/bin/vim"
export XDG_CONFIG_HOME=$HOME/.config
export CUPS_SERVER=localhost

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

