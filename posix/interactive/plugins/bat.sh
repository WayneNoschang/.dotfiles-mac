#!/bin/sh
# bat > Clone of 'cat' with syntax highlighting and Git integration
# https://github.com/sharkdp/bat

# --- Parameters ---

# Set bat config directory (not config path): https://github.com/sharkdp/bat/issues/2890
export BAT_CONFIG_DIR="$XDG_CONFIG_HOME/bat"

# Dark/light mode: https://github.com/sharkdp/bat?tab=readme-ov-file#dark-mode
# if defaults read -globalDomain AppleInterfaceStyle >/dev/null 2>&1; then
#   export BAT_THEME="modus"
# else
#   export BAT_THEME="modus-light"
# fi

# NOTES:
# Use `\bat cache --build` when building cache. The backslash escape character negates aliases
# How to use bat for man pages: https://github.com/sharkdp/bat?tab=readme-ov-file#man
