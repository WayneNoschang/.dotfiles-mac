#!/usr/bin/env $SHELL

set -o vi        # Set keybinding to vim insert mode.
set -o ignoreeof # An interactive shell will not exit upon reading EOF (Ctrl-D).

# -- Changing Directories --
shopt -s autocd # If command issued is a directory, perform the cd command to that directory.

# -- Expansion and Globbing --
shopt -s nocaseglob # Make globbing (filename expansion) case insensitive.

# NOTE

# In Bash `shopt` and `set` provide a different set of options.
# Use `set -o` to set and `set +o` to unset an option.
# Use `shopt -s` to set and `shopt -u` to unset an option.
# Use `shopt -o` to change `set` type options.

# Resources:
# Shopt options: https://www.gnu.org/software/bash/manual/html_node/The-Shopt-Builtin.html
# Set options: https://www.gnu.org/software/bash/manual/html_node/The-Set-Builtin.html
