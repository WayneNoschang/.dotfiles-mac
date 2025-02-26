# Zsh options: `man zshoptions`

# -- Changing Directories --
# (See ./filesystem.zsh)

# -- Completion --

# -- Expansion and Globbing --
unsetopt case_glob  # Make globbing (filename generation) case insensitive.

# -- History --
# (See ./history.zsh)

# -- Initialization --

# -- Input/Output --
# (See ./io.zsh)

# -- Job Control --

# -- Prompting --
# (See ./prompt.zsh)

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
