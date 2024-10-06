# $HOME/.zshenv

export ZDOTDIR=$HOME/.dotfiles/zsh

# Zsh startup files: https://zsh.sourceforge.io/Intro/intro_3.html
# The `.zshenv` startup file is sourced on all invocations of the shell, unless the -f option is set.
# It should contain commands to set the command search path, plus other important environment variables.
# It should NOT contain commands that produce output or assume the shell is attached to a tty.

# --- XDG base directories ---
source $HOME/xdg.sh

# --- Add local binary folder to PATH ---
# path+=("$HOME/.local/bin") -- Works for Zsh only
PATH=$HOME/.local/bin:$PATH

# --- Additional user directories ---
export USER_BUILDS_HOME=$HOME/.dotfiles/.builds  # Contains packages built from source (i.e. plugins/packages without brew support).
export USER_INIT_HOME=$HOME/.dotfiles/.init      # Contains scripts and files for automating transition to a new machine.

# --- Disable shell sessions ---
export SHELL_SESSIONS_DISABLE=1                  # Disables .zsh_sessions folder created by Apple terminal

