#!/bin/sh

# macOS system settings
# driesvints / dotfiles:    https://github.com/driesvints/dotfiles/blob/main/.macos
# mathiasbynens / dotfiles: https://github.com/mathiasbynens/dotfiles/blob/main/.macos
# See `man defaults`

# Stop .DS_Store on network stores
defaults write com.apple.desktopservices DSDontWriteNetworkStores true

# Stop .DS_Store on removable drives
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Set config directory for iTerm2
defaults write com.googlecode.iterm2 PreferredBaseDir '~/.dotfiles/config/iterm2'
