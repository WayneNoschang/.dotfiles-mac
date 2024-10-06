# Environment variables for shell and core utilities.
# Zsh parameters: `man zshparam`


# --- Zsh ---
cdpath+=($ZDOTDIR $XDG_CONFIG_HOME)
export HISTFILE="$XDG_STATE_HOME/zsh/history"  # The history file (.zsh_history) to save when an interactive shell exits



# --- Pre-installed programs ---

# No less history file
export LESSHISTFILE="/dev/null"

# Configure vimrc location (for regular vim)
# export VIMINIT="source $XDG_CONFIG_HOME/vim/vimrc"  # Comment this line if using neovim
