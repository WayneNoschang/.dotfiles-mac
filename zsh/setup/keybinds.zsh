# Zsh has its own builtin line editor called 'zle'.
# In Zsh any widget can be executed by entering its name with `Esc x`.

# Since 'zle' is Zsh specific, use the 'bindkey' command for configuration (no special config or setup file).
# Use `bindkey` to get a list of existing keybindings, use `bindkey -L` to get the same list as executable commands.
# Use `bindkey -M` to refer to a specific keymapping.
# The 'bindkey' command is unable to show unbound widgets.

# bindkey -A viins main  # Same as `setopt vi` or `set -o vi`

bindkey ' ' magic-space       # perform history expansion in current line
bindkey '\e[3~' delete-char   # delete key
bindkey '\eq' push-line-or-edit

bindkey -as '\C-xz' 'invim ~/.config/zsh/\C-M' # Bind string to vicmd
bindkey -s '\C-xz' 'nvim ~/.config/zsh/'
bindkey -M emacs -s '\C-xz' 'nvim ~/.config/zsh/'

# The 'zle' command is used for creating extensions to the editor.
# Use `zle -la` to list all available widgets.
# Press `Esc x` and enter widget `where-is` to lookup a widget's keybind.
# Run `man zshzle` and search for 'ZLE BUILTINS'.

