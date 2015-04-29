#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
#sysmodmap=/etc/X11/xinit/.Xmodmap
#
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
	for f in /etc/X11/xinit/xinitrc.d/* ; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi
#
## merge in defaults and keymaps
if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi
#
#if [ -f $sysmodmap ]; then
    #xmodmap $sysmodmap
#fi
#
if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi
# start some nice programs



# Fix keyboard repeat rate
xset r rate 150 40 &

# map caps lock to ctrl
/usr/bin/setxkbmap -option 'ctrl:nocaps'

# This swaps alt and command. XMonad will now use super (alt key on mac) and
# emacs can use alt (cmd) key.
# /usr/bin/setxkbmap -option 'altwin:swap_alt_win'

# if [ -f "$usermodmap" ]; then
    # xmodmap "$usermodmap"
# fi
# Disable touchpad when typing
#syndaemon -t -k -i .5 -d &
# fix mouse accel and pointer
#xset m 0 0
#xinput set-prop 13 260 -1 deprecated for 50-mouse-accel.conf
#xinput set-prop 14 260 -1
xsetroot -cursor_name left_ptr

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

#xset +dpms
#xset dpms 0 0 300

# Set up multimedia keys.
xbindkeys

# And start up XMonad!
# exec xmonad
# exec enlightenment_start
exec startxfce4

# Get redshift going. This causes xmonad to hang if above the exec line..
# and doesn't work as is.
# redshift &

#exec openbox-session
