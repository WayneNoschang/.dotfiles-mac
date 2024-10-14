#!/bin/sh
# bat > Clone of cat(1) with syntax highlighting and Git integration
# https://github.com/sharkdp/bat

# --- Parameters ---

# Set bat config directory (not config path): https://github.com/sharkdp/bat/issues/2890
export BAT_CONFIG_DIR="$XDG_CONFIG_HOME/bat"

# --- Aliases ---

# bat dark/light mode: https://github.com/sharkdp/bat?tab=readme-ov-file#dark-mode
alias bat="bat --theme=\$(defaults read -globalDomain AppleInterfaceStyle &> /dev/null && echo 'GitHub-Dark' || echo 'GitHub-Light')"

# NOTES:
# Use `\bat cache --build` when building cache. The backslash escape character negates aliases
# How to use bat for man pages: https://github.com/sharkdp/bat?tab=readme-ov-file#man
