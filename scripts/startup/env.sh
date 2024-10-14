#!/dev/sh
# Environment variables for shell and core utilities.

export LESSHISTFILE="/dev/null"                              # No less history file
export HISTFILE="$XDG_STATE_HOME/$(basename $SHELL)/history" # The history file to save when an interactive shell exits.

# export VIMINIT="source $XDG_CONFIG_HOME/vim/vimrc" # Configure vimrc location (for regular vim)
