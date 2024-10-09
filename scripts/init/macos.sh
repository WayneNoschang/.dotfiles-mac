#!/bin/sh

# macOS system settings
# macOS defaults: https://macos-defaults.com/
# See `man defaults`


# Stop .DS_Store on network stores
defaults write com.apple.desktopservices DSDontWriteNetworkStores true

# Stop .DS_Store on removable drives
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Set config directory for iTerm2
defaults write com.googlecode.iterm2 PreferredBaseDir '~/.dotfiles/config/iterm2'



# NOTE:
 
# Helpful commands:
# List all domains: `defaults domains | tr "," "\n"`

# Example dotfiles:
# driesvints macos settings:      https://github.com/driesvints/dotfiles/blob/main/.macos
# mathiasbynens macos settings:   https://github.com/mathiasbynens/dotfiles/blob/main/.macos
