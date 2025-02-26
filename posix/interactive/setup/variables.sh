#!/dev/sh
# Environment variables for shell and core utilities.

export HISTFILE="$XDG_STATE_HOME/$(basename $SHELL)/history" # Location of history file
export HISTSIZE=1500                                         # Number of lines saved by shell
export LESSHISTFILE="/dev/null"                              # No 'less' history file

# export VIMINIT="source $XDG_CONFIG_HOME/vim/vimrc" # Configure vimrc location (for regular vim)
