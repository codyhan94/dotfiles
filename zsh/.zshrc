autoload -U colors compinit promptinit select-word-style
colors
compinit
select-word-style bash
promptinit

# Source our aliases!
[[ -f ~/.zsh_aliases ]] && . ~/.zsh_aliases

setopt completealiases
setopt correct_all

# autocompletion
eval `dircolors -b`
zstyle ':completion:*' list-colors '${(s.:.)LS_COLORS}'
zstyle ':completion:*' menu select eval "$(dircolors -b)"
zstyle :compinstall filename '/home/cody/.zshrc'

# history
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt append_history autocd extendedglob hist_ignore_all_dups
unsetopt beep nomatch notify
bindkey -e

[[ -n "${key[PageUp]}"   ]] && bindkey "${key[PageUp]}"  history-beginning-search-backward
[[ -n "${key[PageDown]}" ]] && bindkey "${key[PageDown]}"  history-beginning-search-forward

# Something from online - type a few characters and press up and down to
# search history - pretty useful. Imported from .bashrc
bindkey "\e[A" history-search-backward
bindkey "\e[B" history-search-forward

# custom prompt
function cur_dir_path {
    CURRENT=`dirname ${PWD}`
    if [[ $CURRENT = / ]]; then
        echo ""
    elif [[ $CURRENT = "/home" ]]; then
        echo ""
    else
        CURRENT=$(print -P %~)
        echo "${CURRENT%/*}/"
    fi
}
function dir_name {
    echo "%{$fg_no_bold[yellow]%}$(cur_dir_path)%{$fg_no_bold[magenta]%}%1~%{$reset_color%}"
}
function git_stat {
    GIT_STATUS=$(git status 2>/dev/null | grep -i "nothing to commit")
    if [ -z ${GIT_STATUS} ]; then
        echo " %{$fg_no_bold[yellow]!!"
    fi
}
function git_branch {
    GIT_BRANCH=$(git branch 2>/dev/null | grep \* | awk '{ print $2 }')
    if [ ${GIT_BRANCH} ]; then
        echo " %{$fg_no_bold[yellow]%}on %{$fg_no_bold[magenta]%}${GIT_BRANCH}$(git_stat)%{$reset_color%}"
    fi
}
function bat_level {
    BAT_LEVEL=$(acpi -b | cut -f4 -d' ' | sed -e 's/%//' -e 's/,//')
    if [[ $BAT_LEVEL -gt 90 ]]; then
        echo "%{$fg_no_bold[green]%}${BAT_LEVEL}%%%{$reset_color%}"
    elif [[ $BAT_LEVEL -gt 50 ]]; then
        echo "%{$fg_no_bold[cyan]%}${BAT_LEVEL}%%%{$reset_color%}"
    elif [[ $BAT_LEVEL -gt 15 ]]; then
        echo "%{$fg_no_bold[yellow]%}${BAT_LEVEL}%%%{$reset_color%}"
    else
        echo "%{$fg_no_bold[red]%}${BAT_LEVEL}%%%{$reset_color%}"
    fi
}

PROMPT='
(%{$fg_no_bold[cyan]%}%n @ %m%{$reset_color%})=(%{$fg_no_bold[cyan]%}%?%{$reset_color%})=(%{$fg_no_bold[cyan]%}%T %D%{$reset_color%})
=($(dir_name)$(git_branch)%{$reset_color%})=(%{$fg_no_bold[yellow]%}$(ls -l | grep -v total | wc -l | sed "s: ::g") files, $(ls -lah | grep -m 1 total | sed "s/total //")%{$reset_color%})=> '

setopt prompt_subst

# command not found hook for pkgfile
#source /usr/share/doc/pkgfile/command-not-found.zsh

# add home to path
typeset -U path
path=(~/bin $path)
# append current directory to path
path=($path .)
# Wine binaries
# path=(~/bin ~/bin/win32 $path)

gsgetpages()
{
    # @arg1 : first page of the range to extract
    # @arg2 : last page of the range to extract
    # @arg3 : input file
    gs -sDEVICE=pdfwrite -dNOPAUSE -dBATCH -dSAFER -dFirstPage=${1} -dLastPage=${2} -sOutputFile=temp.pdf ${3}
}

origin-clone()
{
    # @arg1 : the repo to clone
    git clone bkubisiak@69.69.108.139:/opt/git/${1}
}

encrypt()
{
    gpg -c ${1} && rm ${1}
}
