# zsh-completions > Additional completion definitions for zsh
# https://github.com/zsh-users/zsh-completions
# https://docs.brew.sh/Shell-Completion#configuring-completions-in-zsh


# --- Run Commands ---

fpath=($ZDOTDIR/completions $fpath)  # zsh completion definitions, must add before 'compinit' call

autoload -Uz compinit   # 'compinit' should be called only once for each shell instance
compinit -d "$XDG_CACHE_HOME"/zsh/zcompdump-$ZSH_VERSION  # Specify which dumpfile to use

zstyle ":completion:*" use-cache on
zstyle ":completion:*" cache-path "$XDG_CACHE_HOME"/zsh/zcompcache

_comp_options+=(globdots)  # Completion for hidden (dot) files

# Better 'run-help' command
unalias run-help           # Remove run-help alias to man
autoload -U run-help


# NOTES

# Tutorials
# Zsh completion guide: https://thevaluable.dev/zsh-completion-guide-examples/
#
# Reminders
# The folder `zcompcache` contains cache files for Zsh's completion system
# The file `zcompdump` is created by Zsh to speed up `compinit` initialization

# Calling compinit more than once increases startup time significantly and erases completion functions added programmatically
# See: https://stackoverflow.com/questions/67136714/how-to-properly-install-new-completions-in-zsh
