# Bash filesystem navigation configuration

# -- Aliases --

# -- Options --
set -o physical # Resolve symbolic links to their true values when changing directory.
shopt -s autocd # If command issued is a directory, perform the cd command to that directory.

# -- Parameters --
# DIRSTACK=""   # Add useful directories to directory stack.

# NOTES
# The directory stack is a list of recently visited directories.
# Use `dirs` to display the directory stack, use `-v` option for a numbered list.
# The current directory is always at the "top" of the directory stack.
# `pushd` changes current directory and adds it to top of stack.
# `popd` changes current directory and removes it from stack.
# Use `cd -` to change to previous directory.
