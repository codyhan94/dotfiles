# fix font issues
export GDK_USE_XFT=1

# Append last command to histfile
export PROMPT_COMMAND="history -a; history -n; $PROMPT_COMMAND"

# Homebrewed python packages
#export PYTHON_PATH=/usr/local/Cellar

export EDITOR="/usr/bin/vim"
export XDG_CONFIG_HOME=$HOME/.config
export CUPS_SERVER=localhost

# add home to path
typeset -U path
path=(/Developer/NVIDIA/CUDA-5.5/bin $path)
path=(/usr/local/bin $path)
path=(~/.cabal/bin $path)
path=(~/bin $path)
# append current directory to path
path=($path .)
path=($path /Applications/Racket\ v5.93/bin)
path+=/usr/local/opt/llvm/bin
path+=/Library/TeX/texbin
# Wine binaries
# path=(~/bin ~/bin/win32 $path)

#eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"

