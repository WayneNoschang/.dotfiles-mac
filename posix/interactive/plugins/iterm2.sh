#!/bin/sh

# iTerm2 utilities
# https://iterm2.com/documentation-utilities.html

# -- Add iterm2 commands to PATH --
# if [ -d "$XDG_CONFIG_HOME"/iterm2/utilities ] && [ -d "$HOME"/.local/bin ]
# then
#   for util in "$XDG_CONFIG_HOME"/iterm2/utilities/*
#   do
#     if ! command -v "$(basename "$util")" &> /dev/null
#     then
#       ln -s $util $HOME/.local/bin/$(basename $util)
#     fi
#   done
# else
#   echo "iterm2 shell integration: Make sure \$HOME/.local/bin exists and is in PATH"
#   echo "iterm2 shell integration: Download iterm2 utilities and place under \$XDG_CONFIG_HOME/iterm2/utilities"
# fi

# iTerm2 scripts
# https://iterm2.com/documentation-scripting-fundamentals.html

# example of a user defined variable called "gitBranch"
iterm2_print_user_vars() {
  iterm2_set_user_var gitBranch $(git branch --show-current 2>/dev/null)
  iterm2_set_user_var gitStatus $(test -n "$(git status -s 2>/dev/null)" && echo "⦁")
}

# Aliases
alias it2delcolors='defaults delete com.googlecode.iterm2 "Custom Color Presets"'
alias icat='it2cat'
