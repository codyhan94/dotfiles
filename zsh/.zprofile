#
# ~/.zprofile
#

# Anti-aliasing for Java apps (JetBrains)
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=gasp'

#[[ -f ~/.zshrc ]] && . ~/.zshrc
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
