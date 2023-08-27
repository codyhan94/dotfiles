# simple profiling, uncomment to enable
zmodload zsh/zprof

# more in depth profiler
PROFILE_STARTUP=false
if [[ "$PROFILE_STARTUP" = true ]]; then
    # http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html
    PS4=$'%D{%M%S%.} %N:%i> '
    exec 3>&2 2>$HOME/tmp/startlog.$$
    setopt xtrace prompt_subst
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/dotfiles/zsh/.oh-my-zsh

# our custom functions
fpath=(
    ~/dotfiles/zsh/.zfunctions
    # can't use using zsh-completions as omz plugin so do this
    ~/.zsh/zsh-completions/src
    $fpath
)

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME=""

# disable calling compaudit to speed up load times
ZSH_DISABLE_COMPFIX="true"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=()

source $ZSH/oh-my-zsh.sh

# User configuration

export MANPATH="${HOME}/share/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Source our aliases and scripts
[[ -f ~/.zsh_aliases ]] && . ~/.zsh_aliases
#[[ -f ~/perlscripts/cdh.zsh ]] && . ~/perlscripts/cdh.zsh
#[[ -f ~/etc/cdhist.bashrc ]] && . ~/etc/cdhist.bashrc

# gvim client/server
gvim () { command gvim --remote-tab-silent "$@" || command gvim "$@"; }

# custom ripgrep command
#rg () { command rg -p "$@" | less -RFX; }

# cdr for cd history "cd-recent"
autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
add-zsh-hook chpwd chpwd_recent_dirs
zstyle ':chpwd:*' recent-dirs-max 30
zstyle ':chpwd:*' recent-dirs-default true
zstyle ':chpwd:*' recent-dirs-insert both

# for pure prompt
autoload -U promptinit; promptinit
prompt pure

# some specific preferences
unsetopt beep
setopt hist_ignore_all_dups
# https://github.com/robbyrussell/oh-my-zsh/issues/449
unsetopt nomatch

# functions for setting CDS environment
autoload -Uz set_build p4Hier absHier buildinfo use64

# don't duplicate anything in path
typeset -U path
path=(
    # make sure our own local bin is at the front of path
    ~/bin
    # 6.1.7 ddtool and designer
    #/home/codyh/p4builds/617Main/tools/Qt/64bit/bin
    #/home/codyh/p4builds/617Main/tools/dfII/pvt/bin
    # for ecbuild
    # /eng/tools/cic/cm/bin/
    /grid/common/pkgs/tmux/v2.1/bin
    # one day we might get YCM working here
    /grid/common/pkgs/gcc/latest/bin
    # put before emacs so we use exuberant tags instead of emacs ctags
    /grid/common/pkgs/ctags/latest/bin
    /grid/common/pkgs/emacs/v25.1/bin
    /grid/common/pkgs/htop/latest/bin
    /grid/common/pkgs/python/v3.6.1/bin
    /grid/common/pkgs/vim/v8.0/bin
    /grid/common/pkgs/git/v2.8.3/bin
    /grid/common/pkgs/perforce/latest/bin
    /grid/common/pkgs/ccrtools
    /grid/common/pkgs/ncdu/latest/bin
    /grid/common/bin
    $path
    # put current directory at the very end of path
    .
)
# one day we might get YCM working here
#typeset -TU LD_LIBRARY_PATH ld_library_path
#ld_library_path=(
    #/grid/common/pkgs/gcc/latest/lib64
    #/grid/common/pkgs/python/v2.7.10/lib
    #~/dotfiles/vim/.vim/bundle/YouCompleteMe/third_party/ycmd
    #$ld_library_path
#)

# for debugging completions
#zstyle ‘:completion:*’ verbose yes
#zstyle ‘:completion:*:descriptions’ format ‘%B%d%b’
#zstyle ‘:completion:*:messages’ format ‘%d’
#zstyle ‘:completion:*:warnings’ format ‘No matches for: %d’
#zstyle ‘:completion:*’ group-name ”

# label cdpath vs local directory completions
zstyle ':completion:*' group-name ''
zstyle ':completion:*:descriptions' format %d

# save paths
export DEFAULT_PATH=$PATH
export DEFAULT_LD_LIBRARY_PATH=$LD_LIBRARY_PATH


# Entirety of my startup file... then
if [[ "$PROFILE_STARTUP" = true ]]; then
    unsetopt xtrace
    exec 2>&3 3>&-
fi
#zprof

# fzf keybinds and completion
source /usr/share/doc/fzf/examples/key-bindings.zsh
source /usr/share/doc/fzf/examples/completion.zsh

# check if fasd is installed
fasd_cache="$HOME/.fasd-init-cache"
if [[ "$commands[fasd]" -nt "$fasd_cache" || ! -s "$fasd_cache" ]]; then
  fasd --init posix-alias zsh-hook zsh-ccomp zsh-ccomp-install \
    zsh-wcomp zsh-wcomp-install >| "$fasd_cache"
fi
source "$fasd_cache"
unset fasd_cache
# how many characters can be skipped to generate a match
export _FASD_FUZZY=10
# need to apply the PR for this from github
export _FASD_RESOLVE_SYMLINKS=1
autoload -Uz j jd v
# try fzf-fasd
#source ~/.fzf-fasd.plugin.zsh


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/cody/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/cody/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/cody/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/cody/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

