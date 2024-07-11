# zsh-syntax-highlighting > Fish shell like syntax highlighting for zsh
# https://github.com/zsh-users/zsh-syntax-highlighting


# --- Run commands ---

# Zsh-users syntax highlighting:
if [[ -f "$HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]]
then
  source "$HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
fi



# --- Parameters ---

# Styles:
ZSH_HIGHLIGHT_STYLES[suffix-alias]=fg=blue,underline
ZSH_HIGHLIGHT_STYLES[precommand]=fg=blue,underline
ZSH_HIGHLIGHT_STYLES[arg0]=fg=blue
ZSH_HIGHLIGHT_STYLES[autodirectory]=fg=magenta,underline
ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=red

# Style options:
# ZSH_HIGHLIGHT_STYLES[process-substitution]=none                       # ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=yellow
# ZSH_HIGHLIGHT_STYLES[bracket-error]=fg=red,bold                       # ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]=fg=cyan
# ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=none                       # ZSH_HIGHLIGHT_STYLES[named-fd]=none
# ZSH_HIGHLIGHT_STYLES[globbing]=fg=blue                                # ZSH_HIGHLIGHT_STYLES[history-expansion]=fg=blue
# ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=none                       # ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]=fg=yellow
# ZSH_HIGHLIGHT_STYLES[default]=none                                    # ZSH_HIGHLIGHT_STYLES[back-quoted-argument]=none
# ZSH_HIGHLIGHT_STYLES[process-substitution-delimiter]=fg=magenta       # ZSH_HIGHLIGHT_STYLES[cursor]=standout
# ZSH_HIGHLIGHT_STYLES[autodirectory]=fg=green,underline                # ZSH_HIGHLIGHT_STYLES[redirection]=fg=yellow
# ZSH_HIGHLIGHT_STYLES[commandseparator]=none                           # ZSH_HIGHLIGHT_STYLES[arg0]=fg=blue
# ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=red                            # ZSH_HIGHLIGHT_STYLES[comment]=fg=black,bold
# ZSH_HIGHLIGHT_STYLES[back-quoted-argument-delimiter]=fg=magenta       # ZSH_HIGHLIGHT_STYLES[command-substitution]=none
# ZSH_HIGHLIGHT_STYLES[cursor-matchingbracket]=standout                 # ZSH_HIGHLIGHT_STYLES[root]=standout
# ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]=fg=cyan             # ZSH_HIGHLIGHT_STYLES[suffix-alias]=fg=blue,underline
# ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter]=fg=magenta       # ZSH_HIGHLIGHT_STYLES[bracket-level-1]=fg=blue,bold
# ZSH_HIGHLIGHT_STYLES[bracket-level-2]=fg=green,bold                   # ZSH_HIGHLIGHT_STYLES[bracket-level-3]=fg=magenta,bold
# ZSH_HIGHLIGHT_STYLES[path]=underline                                  # ZSH_HIGHLIGHT_STYLES[bracket-level-4]=fg=yellow,bold
# ZSH_HIGHLIGHT_STYLES[back-dollar-quoted-argument]=fg=cyan             # ZSH_HIGHLIGHT_STYLES[bracket-level-5]=fg=cyan,bold
# ZSH_HIGHLIGHT_STYLES[rc-quote]=fg=cyan                                # ZSH_HIGHLIGHT_STYLES[numeric-fd]=none
# ZSH_HIGHLIGHT_STYLES[assign]=none                                     # ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=yellow
# ZSH_HIGHLIGHT_STYLES[path_pathseparator]=path_prefix_pathseparator    # ZSH_HIGHLIGHT_STYLES[line]=precommand
# ZSH_HIGHLIGHT_STYLES[fg=blue,underline]=reserved-word                 # ZSH_HIGHLIGHT_STYLES[fg=yellow]=global-alias



# NOTE:
# Using code from zsh-users: https://github.com/zsh-users/zsh-syntax-highlighting
# Changes to ZSH_HIGHLIGHT_STYLES must be made AFTER sourcing the plugin
# More info about changing highlight colors: https://github.com/zsh-users/zsh-syntax-highlighting/issues/464#issuecomment-352488260
