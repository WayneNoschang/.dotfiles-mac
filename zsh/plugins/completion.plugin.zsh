# zsh-completions > Additional completion definitions for zsh
# https://github.com/zsh-users/zsh-completions
# https://docs.brew.sh/Shell-Completion


# --- Run Commands ---

if type brew &> /dev/null
then
  fpath+=($HOMEBREW_PREFIX/share/zsh/site-functions)  # Homebrew completions
  fpath+=($HOMEBREW_PREFIX/share/zsh-completions)     # Zsh-users completions
fi

autoload -Uz compinit
compinit -d "$XDG_CACHE_HOME"/zsh/zcompdump-$ZSH_VERSION  # Specify which dumpfile to use

zstyle ":completion:*" use-cache on
zstyle ":completion:*" cache-path "$XDG_CACHE_HOME"/zsh/zcompcache

_comp_options+=(globdots)  # Completion for hidden (dot) files


# NOTES

# Tutorials
# Zsh completion guide: https://thevaluable.dev/zsh-completion-guide-examples/
#
# Reminders
# The folder `zcompcache` contains cache files for Zsh's completion system
# The file `zcompdump` is created by Zsh to speed up `compinit` initialization
