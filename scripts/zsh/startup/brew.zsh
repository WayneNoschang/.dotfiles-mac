# Homebrew - the missing package manager: https://brew.sh/

eval "$(/opt/homebrew/bin/brew shellenv)"  # Homebrew on arm64



# --- Parameters ---

export HOMEBREW_BUNDLE_FILE_GLOBAL="$USER_INIT_HOME/Brewfile"  # Location of global Brewfile `brew bundle --help`
export HOMEBREW_INSTALL_BADGE="󱄖"     # The “Beer Mug” emoji shown before install summaries, nerd-font options:  ,  ,  , 󰊦 ...

# export HOMEBREW_BAT=""              # If set, use `bat` for the brew `cat` command
# export HOMEBREW_BAT_THEME=""        # Set bat theme for syntax highlighting
# export HOMEBREW_BAT_CONFIG_PATH=""  # Use as bat configuration file instead of $BAT_CONFIG_PATH


# NOTES

# Reminders
# Homebrew completions handled by `../plugins/completions.plugin.zsh` file
# See `man brew | less +/ENVIRONMENT` for available environment variables
# Use `brew install --appdir=$HOME/Applications` to install cask apps for a single user
