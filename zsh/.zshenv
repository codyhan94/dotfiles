# fix font issues
export GDK_USE_XFT=1

# Append last command to histfile
export PROMPT_COMMAND="history -a; history -n; $PROMPT_COMMAND"

# ViVA license
export CDS_LIC_FILE=5280@sjflex1:5280@sjflex2:5280@sjflex3

# perl
export PERL=/grid/common/bin/perl

# perforce
export P4PORT=cicbroker:1666
export P4CONFIG=p4.config
export P4MERGE=p4merge

###############################################################################
# > PATH MODIFICATIONS
###############################################################################

export EDITOR="vim"
export XDG_CONFIG_HOME=$HOME/.config
export CUPS_SERVER=localhost

# for running Qt designer (among other things)
#root=/home/codyh/ubuild/dfII/ubuild_71848/tools
#root=/home/codyh/p4builds/617Main/tools
#export LD_LIBRARY_PATH=$root/lib/64bit:$root/dfII/lib/64bit:$root/Qt/64bit/lib
# /opt/cuda/lib64:/opt/cuda/lib:$LD_LIBRARY_PATH

# tell compiler to not generate warnings - don't want viva to have warnings
export USE_ERROFF=1

# tell cadence wrapper scripts to use 64bit versions of tools
export CDS_AUTO_64BIT=ALL

# make auto less print instead of entering pager
export LESS=-RFX

