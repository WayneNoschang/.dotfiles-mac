#!/usr/bin/env $SHELL

# -- Options --
shopt -s histverify # Do not execute immediately upon history expansion.
shopt -s histappend # Session history appended to HISTFILE rather than overwriting.
shopt -s histreedit # Opportunity to re-edit a failed history substitution (readline editor).
shopt -s cmdhist    # Save all lines of a multi-line command in the same history entry.
shopt -s lithist    # Use "\n" instead of ";" for multi-line commands (requires cmdhist option).

# -- Parameters --
export HISTFILESIZE=1000                # Max number of lines in $HISTFILE
export IGNOREEOF=10                     # Number of consecutive EOF characters before shell will exit
export HISTCONTROL=ignoredups:erasedups # Ignore duplicate commands

# Bash history facilities: https://www.gnu.org/software/bash/manual/html_node/Bash-History-Facilities.html

# NOTES

# The editor command dynamic-complete-history can be used for tab completion of a previous command.
