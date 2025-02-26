# Zsh filesystem navigation configuration

# -- Aliases --

# -- Options --
setopt auto_cd            # If command issued is a directory, perform the cd command to that directory.
setopt chase_links        # Resolve symbolic links to their true values when changing directory.
setopt pushd_ignore_dups  # Don’t push a duplicate directory onto the directory stack.

# setopt auto_pushd       # Make cd push the old directory onto the directory stack. 

# -- Parameters --
# DIRSTACKSIZE=""  # The maximum size of the directory stack, default is no limit.
# cdpath=()        # Directories to search when using `cd`.
# dirstack=()      # Add directories to directory stack, enable with `zmodload -i zsh/parameters`.

# -- Named Directories --
config=$XDG_CONFIG_HOME
bdotdir=$XDG_CONFIG_HOME/bash
zdotdir=$ZDOTDIR
pdotdir=$XDG_CONFIG_HOME/posix

# NOTES

# cd -          # Change to previous directory.
# cd arg1 arg2  # Change directory using a search and replace string.

# Brace `{}` expansion is done before tilde `~` expansion in Zsh, the opposite in Bash.
# Compare output of echo ~{HOME,PWD} between Zsh and Bash.

# Named directories:
# dirname=absolute/path/of/directory  # Create a "named directory".
# ~dirname                            # Expands to directory path of dirname.


# The directory stack (dirstack) is a list of recently visited directories. 
# The current directory is always at the "top" of the directory stack.
# dirs -v  # Display directory stack as a numbered list. 
# pushd    # Change current directory and add previous to top of stack.
# popd     # Remove top directory from stack and make current directory.
# ~-n      # Expands to directory number `n` from bottom.
# cd +n    # Switch to directory number `n` from top.
# Zsh directory stack intro: https://zsh.sourceforge.io/Intro/intro_6.html

# Search in Zshall man page:
# REDIRECTIONS
# REDIRECTIONS WITH NO COMMAND
# Static named directories


