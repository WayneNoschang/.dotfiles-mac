#!/bin/sh

echo "Setting up your Mac..."

# --- Homebrew ---

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  # echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# TODO: export HOMEBREW_BUNDLE_FILE_GLOBAL=""  # Location of global Brewfile `brew bundle --help`
brew update              # Update Homebrew recipes
brew tap homebrew/bundle # Install dependencies with bundle (See Brewfile)
brew bundle              # Bundle packages in adjacent Brewfile

[[ -d $HOME/.local/share ]] || mkdir -p $HOME/.local/share   # XDG_DATA_HOME
[[ -d $HOME/.local/state ]] || mkdir -p $HOME/.local/state   # XDG_STATE_HOME
[[ -d $HOME/.config ]] || mkdir -p $HOME/.config             # XDG_CONFIG_HOME
[[ -d $HOME/.cache ]] || mkdir -p $HOME/.cache               # XDG_CACHE_HOME
[[ -d $HOME/.local/builds ]] || mkdir -p $HOME/.local/builds # Cloned repositories
[[ -d $HOME/.local/bin ]] || mkdir -p $HOME/.local/bin       # Local binary directory

# --- Zsh ---

[[ -d $HOME/.local/share/zsh ]] || mkdir -p $HOME/.local/share/zsh
[[ -d $HOME/.local/state/zsh ]] || mkdir -p $HOME/.local/state/zsh
[[ -d $HOME/.config/zsh ]] || mkdir -p $HOME/.config/zsh
[[ -d $HOME/.cache/zsh ]] || mkdir -p $HOME/.cache/zsh

[[ -d $HOME/.zshrc ]] && rm -rf $HOME/.zshrc     # Remove .zshrc from $HOME
ln -s "$HOME/.config/zsh/zshenv" "$HOME/.zshenv" # Symlink .zshenv to zsh dotfiles

# --- Bash ---

[[ -d $HOME/.local/share/bash ]] || mkdir -p $HOME/.local/share/bash
[[ -d $HOME/.local/state/bash ]] || mkdir -p $HOME/.local/state/bash
[[ -d $HOME/.config/bash ]] || mkdir -p $HOME/.config/bash
[[ -d $HOME/.cache/bash ]] || mkdir -p $HOME/.cache/bash

[[ -d $HOME/.bash_profile ]] && rm -rf $HOME/.bash_profile    # Remove .bash_profile from $HOME
ln -s "$HOME/.config/bash/bash_profile" "$HOME/.bash_profile" # Symlink .bash_profile to .config/bash/bash_profile

# --- Project folders ---
mkdir -p $HOME/Projects/compsci $HOME/Projects/webdev $HOME/Projects/python $HOME/Projects/node $HOME/Projects/shell # Create above using a for-loop

# Clone Github repositories
# ./clone.sh

# --- macOS configurations ---

# Symlink Mackup config file
# ln -s ./.mackup.cfg $HOME/.mackup.cfg

# Set macOS preferences - we will run this last because this will reload the shell
# source .macos
