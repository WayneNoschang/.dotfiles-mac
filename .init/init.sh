#!/bin/sh

echo "Setting up your Mac..."

# --- Homebrew ---

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  # echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

rm -rf "$HOME/.zshrc"                       # Remove .zshrc from $HOME
ln -s "$PWD/zshenv.zsh" "$HOME/.zshenv"     # Symlink .zshenv to zsh dotfile

brew update                                 # Update Homebrew recipes
brew tap homebrew/bundle                    # Install dependencies with bundle (See Brewfile)
brew bundle                                 # Bundle packages in adjacent Brewfile 



# --- Zsh ---
[[ -d $XDG_STATE_HOME/zsh ]]  || mkdir -p $XDG_STATE_HOME/zsh 
[[ -d $XDG_CACHE_HOME/zsh ]]  || mkdir -p $XDG_CACHE_HOME/zsh 
[[ -d $XDG_DATA_HOME/zsh ]]   || mkdir -p $XDG_DATA_HOME/zsh 
[[ -d $XDG_CONFIG_HOME/zsh ]] || mkdir -p $XDG_CONFIG_HOME/zsh 

# --- local binary directory ---
[[ -d $HOME/.local/bin ]] || mkdir -p $HOME/.local/bin


# --- Project folders ---
mkdir -p $HOME/Projects/compsci $HOME/Projects/webdev $HOME/Projects/python $HOME/Projects/node $HOME/Projects/shell


# Clone Github repositories
# ./clone.sh



# --- macOS configurations ---

# Symlink Mackup config file
# ln -s ./.mackup.cfg $HOME/.mackup.cfg


# Set macOS preferences - we will run this last because this will reload the shell
# source .macos
