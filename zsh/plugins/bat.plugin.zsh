# bat > Clone of cat(1) with syntax highlighting and Git integration
# https://github.com/sharkdp/bat


# --- Parameters ---

# bat dark/light mode: https://github.com/sharkdp/bat?tab=readme-ov-file#dark-mode
export BAT_MODE="defaults read -globalDomain AppleInterfaceStyle &> /dev/null && echo 'Primer-GitHub-Dark' || echo 'Primer-GitHub-Light'"

# Set bat config directory (not config path): https://github.com/sharkdp/bat/issues/2890
export BAT_CONFIG_DIR="$XDG_CONFIG_HOME/bat"

# Add color to `man` pages: https://github.com/sharkdp/bat?tab=readme-ov-file#man
export MANPAGER="sh -c 'col -bx | bat --theme=\$($BAT_MODE) -l man -p'"



# --- Aliases ---

alias bat="bat --theme=\$($BAT_MODE)"



# NOTE:
# Bat (textmate) theme: https://github.com/primer/github-textmate-theme
# Use `\bat cache --build` when building cache. The backslash escape character negates aliases 
