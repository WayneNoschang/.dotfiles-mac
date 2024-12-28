# Zsh has its own builtin line editor called 'ZLE'.
# In Zsh no special config or setup file is required.

# In ZLE, a 'keymap' contains a set of bindings for key sequences.
# A key sequence can be bound to a widget or a string of characters.
# The 'bindkey' command is used for configuring keymaps.

# In ZLE, a 'widget' is a ZLE command that performs an action.
# The 'zle' command is used for creating widgets to extend the editor.


# Vi insert mode keybinds
bindkey -v                               # Alias keymap viins (vi insert mode) to main.
# bindkey " " magic-space                  # Perform history expansion in current line.
bindkey "^?" backward-delete-char        # Make backspace key function in insert mode.

bindkey -s "^xz" "nvim ~/.config/zsh/" # Bind a string to a key sequence.

bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

# bindkey "" fzf-completion
# bindkey "" fzf-history-widget
# bindkey "" fzf-file-widget
# bindkey "" fzf-cd-widget

# Vi command mode keybinds
bindkey -a "K" run-help                  # Get help for a command
bindkey -aR "^A"-"^C" self-insert



# NOTE

# Keymaps
# The push-line-or-edit widget makes use of the buffer stack


# Widgets
# Execute a Zsh widget by name with `Esc x`
# Use `zle -la` to list all available widgets.
# Use `where-is` widget to lookup a widget's keybind.

# Variables
# The WORDCHARS variable (Zsh only) defines characters to be considered part of a word:
# WORDCHARS='*?_-.[]~=/&;!#$%^(){}<>' # Default
# WORDCHARS= # Bash equivalent
#
# KEYTIMEOUT=40 # Timeout (miliseconds) to execute a keybind that is also a prefix string.

# Editor options
# See $ZDOTDIR/setup/options.zsh for current ZLE editor options.
# setopt ignoreeof # Prevent exit on end-of-file (Ctrl-D), will exit on 10 consecutive EOFs.
