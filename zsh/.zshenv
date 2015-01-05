# fix font issues
export GDK_USE_XFT=1

# Append last command to histfile
export PROMPT_COMMAND="history -a; history -n; $PROMPT_COMMAND"

export EDITOR="/usr/bin/vim"
export XDG_CONFIG_HOME=$HOME/.config
export CUPS_SERVER=localhost
