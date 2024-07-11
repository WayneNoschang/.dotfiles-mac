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
compinit -d "$XDG_CACHE_HOME"/zsh/zcompdump-$ZSH_VERSION

zstyle ":completion:*" use-cache on
zstyle ":completion:*" cache-path "$XDG_CACHE_HOME"/zsh/zcompcache

_comp_options+=(globdots)  # Completion for hidden (dot) files


# NOTE: 
# Zsh completion guide: https://thevaluable.dev/zsh-completion-guide-examples/
# `zcompdump` and `zcompcache` is now in $XDG_CACHE_HOME directory
