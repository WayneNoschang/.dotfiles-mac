#!/bin/sh
# eza > Modern, maintained replacement for ls
# https://github.com/eza-community/eza

# --- Aliases ---

alias ls="eza"                  # Alias for eza
alias lsa="eza -a1"             # List all files
alias lsd='eza -a1 -I="[A-z]*"' # List only dot files
alias lt="eza --tree"

alias ll="eza -Hhb --long --git"
alias ll12='eza -Hhb --long --git --sort=created --time-style=+"%x %I:%M%P"' #12 hour format
alias llc="eza --long -h --time=created --sort=created"
alias llc12='eza --long -h --time=created --sort=created --time-style=+"%x %I:%M%P"' #12 hour format
