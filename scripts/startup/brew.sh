#!/bin/sh
# Homebrew - the missing package manager: https://brew.sh/

eval "$(/opt/homebrew/bin/brew shellenv)" # Homebrew on arm64

if type brew &> /dev/null
then
  if [[ $(basename $SHELL) = 'zsh' ]]
  then
    fpath+=($HOMEBREW_PREFIX/share/zsh/site-functions)  # Homebrew completions
    fpath+=($HOMEBREW_PREFIX/share/zsh-completions)     # Zsh-users completions
  elif [[ $(basename $SHELL) = 'bash' ]]
  then
    [[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"
  fi
fi

# --- Parameters ---

export HOMEBREW_BUNDLE_FILE_GLOBAL="$USER_INIT_HOME/Brewfile" # Location of global Brewfile `brew bundle --help`
# export HOMEBREW_INSTALL_BADGE="󱄖" # The “Beer Mug” emoji shown before install summaries, nerd-font options:󰋟,  ,  ,  , 󰊦 ...

# export HOMEBREW_BAT=""              # If set, use `bat` for the brew `cat` command
# export HOMEBREW_BAT_THEME=""        # Set bat theme for syntax highlighting
# export HOMEBREW_BAT_CONFIG_PATH=""  # Use as bat configuration file instead of $BAT_CONFIG_PATH

# NOTES

# Reminders
# Homebrew completions handled by `../plugins/completions.plugin.zsh` file
# See `man brew | less +/ENVIRONMENT` for available environment variables
# Use `brew install --appdir=$HOME/Applications` to install cask apps for a single user
