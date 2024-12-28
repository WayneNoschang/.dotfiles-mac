# Zsh options: `man zshoptions`

# -- Changing Directories --
setopt auto_cd       # If command issued is a directory, perform the cd command to that directory.

# -- Completion --

# -- Expansion and Globbing --
unsetopt case_glob  # Make globbing (filename generation) case insensitive.

# -- History --
# (See ./history.zsh)

# -- Initialization --

# -- Input/Output --
setopt flow_control      # Pause terminal i/o (Ctrl-S) and resume (Ctrl-Q) commands with long output (e.g. `\ls -R`).
setopt ignore_eof        # Don't exit on end-of-file (Ctrl-D), exits on ten consecutive EOFs anyway.
unsetopt correct         # Don't try to correct the spelling of commands.

# -- Job Control --

# -- Prompting --

# -- Scripts and Functions --

# -- Shell Emulation --
setopt ksh_option_print  # Show all options, marked on/off (off is default).
unsetopt sh_word_split   # Causes field splitting to be performed on unquoted parameter expansions.

# -- Shell State --

# -- Zle --
unsetopt beep  # No beep on error in ZLE.



# NOTES

# List all options: `set -o`

# Use `emulate -LR zsh` to revert options to default settings
#     This can be useful to add at the beginning of zsh scripts

# Zsh options: https://zsh.sourceforge.io/Doc/Release/Options.html
