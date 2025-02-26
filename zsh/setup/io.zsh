# Zsh input/output configuration

# -- Aliases --

# -- Options --
setopt flow_control      # Pause terminal i/o (Ctrl-S) and resume (Ctrl-Q) commands with long output (e.g. `\ls -R`).
setopt ignore_eof        # Don't exit on end-of-file (Ctrl-D), exits on ten consecutive EOFs anyway.
unsetopt correct         # Don't try to correct the spelling of commands.
unsetopt clobber         # Disable overwriting an existing file with `>` (use `>!` or `>|` instead).
setopt clobber_empty     # Enable overwriting with `>` if file is empty.
setopt append_create     # Create file when using `>>` if file doesn't exist.

# -- Parameters --


# File descriptors
# /dev/fd/0,  0>  # Standard input (stdin)
# /dev/fd/1,  1>  # Standard output (stdout)
# /dev/fd/2,  2>  # Standard error (stderr)
# Bash/Zsh man page > REDIRECTION
