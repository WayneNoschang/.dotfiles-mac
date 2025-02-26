#!/usr/bin/env $SHELL
# zsh-syntax-highlighting > Fish shell like syntax highlighting for zsh
# https://github.com/zsh-users/zsh-syntax-highlighting


# --- Run commands ---

# Zsh-users syntax highlighting:
if [[ -f "$HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]]
then
  source "$HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
fi

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main)

# # Commands
# ZSH_HIGHLIGHT_STYLES[arg0]=fg=4,bold  # blue
# ZSH_HIGHLIGHT_STYLES[command]=fg=4,bold
# ZSH_HIGHLIGHT_STYLES[builtin]=fg=4,bold
# ZSH_HIGHLIGHT_STYLES[precommand]=fg=4,bold
# ZSH_HIGHLIGHT_STYLES[hashed-command]=fg=4
# ZSH_HIGHLIGHT_STYLES[autodirectory]=fg=4
# 
# # Syntax
# ZSH_HIGHLIGHT_STYLES[default]=fg=none
# ZSH_HIGHLIGHT_STYLES[assign]=fg=none
# ZSH_HIGHLIGHT_STYLES[comment]=fg=none
# ZSH_HIGHLIGHT_STYLES[commandseparator]=fg=none
# ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=fg=none
# ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=fg=none
# ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=7  # gray
# ZSH_HIGHLIGHT_STYLES[reserved-word]=fg=1  # red
# 
# # Expansion
# ZSH_HIGHLIGHT_STYLES[globbing]=fg=4,bold  # blue
# ZSH_HIGHLIGHT_STYLES[history-expansion]=fg=4,bold
# ZSH_HIGHLIGHT_STYLES[arithmetic-expansion]=fg=4
# 
# # Substitution
# ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter]=fg=13  # bright-magenta
# ZSH_HIGHLIGHT_STYLES[process-substitution-delimiter]=fg=13
# ZSH_HIGHLIGHT_STYLES[back-quoted-argument-delimiter]=fg=13,bold
# 
# # Quoting
# ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=12  # bright-blue
# ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=12
# ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]=fg=12
# ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]=fg=12
# ZSH_HIGHLIGHT_STYLES[rc-quote]=fg=12
# ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]=fg=8  # gray
# ZSH_HIGHLIGHT_STYLES[back-dollar-quoted-argument]=fg=8
# 
# # Redirection
# ZSH_HIGHLIGHT_STYLES[redirection]=fg=9  # bright-red
# ZSH_HIGHLIGHT_STYLES[named-fd]=fg=9
# ZSH_HIGHLIGHT_STYLES[numeric-fd]=fg=9
# 
# # User Commands
# ZSH_HIGHLIGHT_STYLES[function]=fg=5  # magenta
# ZSH_HIGHLIGHT_STYLES[alias]=fg=4  # blue
# ZSH_HIGHLIGHT_STYLES[suffix-alias]=fg=none
# ZSH_HIGHLIGHT_STYLES[global-alias]=fg=none



# NOTE:
# Highlighters: https://github.com/zsh-users/zsh-syntax-highlighting/tree/master/highlighters
# Syntax highlighting zsh-users: https://github.com/zsh-users/zsh-syntax-highlighting
# Changes to ZSH_HIGHLIGHT_STYLES must be made AFTER sourcing the plugin
