# Zsh history configuration

# -- Aliases --

# -- Options --
setopt extended_history        # Write the history file in the ':start:elapsed;command' format.
setopt share_history           # Append to HISTFILE immediately and import new events from HISTFILE.
setopt hist_save_no_dups       # Exclude older duplicate commands when re-writing HISTFILE.
setopt hist_ignore_all_dups    # New command removes older duplicates from internal history.
setopt hist_find_no_dups       # ZLE search widgets won't show duplicate events.
setopt hist_no_store           # Remove the history (fc -l) command from the history list when invoked.

# -- Parameters --
export SAVEHIST=1500  # Number of lines saved in $HISTFILE.

# NOTES

# `fc -Il` - # Get history for internal events (not from $HISTFILE)
# `fc -Ll` - # Get internal and file history but not from other shells.
# `fc -l` -  # Get all history info, same as `history` command.

# Use $EDITOR to write/edit a command in history.
# autoload -U edit-command-line       # Load function
# zle -N edit-command-line            # Create widget for function
# bindkey -a "^[e"  edit-command-line # Bind key to widget

