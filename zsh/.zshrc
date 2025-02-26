#!/usr/bin/env zsh
# .zshrc > interactive shells

# --- Zsh speed test start ---
if [[ -n "$ZSH_DEBUGRC" ]]; then
  zmodload zsh/zprof
fi


# --- POSIX startup files ---
for sh_setup_file in $XDG_CONFIG_HOME/posix/interactive/setup/*.sh(N); do
  source $sh_setup_file
done

# --- $ZDOTDIR/startup files ---
for zsh_setup_file in "${ZDOTDIR:-$HOME}"/setup/*.zsh(N); do
  source "${zsh_setup_file}"
done

# --- POSIX plugin files ---
for sh_plugin_file in $XDG_CONFIG_HOME/posix/interactive/plugins/*.sh(N); do
  source "$sh_plugin_file"
done

# --- $ZDOTDIR/plugins files ---
for zsh_plugin_file in "${ZDOTDIR:-$HOME}"/plugins/*.zsh(N); do
  source "${zsh_plugin_file}"
done

# --- Functions ($ZDOTDIR/functions) ---
fpath=($ZDOTDIR/functions $fpath)
autoload -Uz ${fpath[1]}/*(:t)


# --- Zsh speed test record ---
if [[ -n "$ZSH_DEBUGRC" ]]; then
  zprof
fi

# NOTES

# Awesome lists
# Awesome Zsh plugins: https://github.com/unixorn/awesome-zsh-plugins

# Tutorials
# How to speed up zsh load time:  https://htr3n.github.io/2018/07/faster-zsh/

# Reminders
# Add a file named `$HOME/.hushlogin` to suppress shell login messages


# man 'zsh manpage' | col -bx | perl helpfiles
