# $HOME/.zshenv

export ZDOTDIR=$HOME/.dotfiles/zsh

# Zsh startup files: https://zsh.sourceforge.io/Intro/intro_3.html
# The `.zshenv` startup file is sourced on all invocations of the shell, unless the -f option is set.
# It should contain commands to set the command search path, plus other important environment variables.
# It should NOT contain commands that produce output or assume the shell is attached to a tty.



# --- XDG base directories ---

export XDG_CONFIG_HOME="$HOME/.dotfiles/config"     # Settings files for applications, store data in VCS.
export XDG_DATA_HOME="$HOME/.local/share"           # Data (often end-user data) files that an application works on.
export XDG_STATE_HOME="$HOME/.local/state"          # Non-essential data that persists on reboot, unlike cache or temp files.
export XDG_CACHE_HOME="$HOME/.cache"                # Non-essential and re-creatable data for quick access.


#      Where to put a file?         DATA   CONFIG   STATE   CACHE   RUNTIME
#  ------------------------------- ------ -------- ------- ------- ---------
#   Sync data across machines?      yes?   yes      no      no      no
#   Store data in VCS (Git/SVN)?    no     yes      no      no      no
#   Should data be backed up?       yes    yes      yes     no      no
#   Can data live in a temp file?   no     no       no      yes     yes?
#   Is there a lot of this data?    yes    no       no      yes     no
#  ------------------------------- ------ -------- ------- ------- ---------

# More info:
#   https://wiki.archlinux.org/title/XDG_Base_Directory
#   https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html
#   https://wiki.debian.org/XDGBaseDirectorySpecification



# --- Add local binary folder to PATH ---
path+=("$HOME/.local/bin")

# --- Additional user directories ---
export USER_BUILDS_HOME=$HOME/.dotfiles/.builds  # Contains packages built from source (i.e. plugins/packages without brew support).
export USER_INIT_HOME=$HOME/.dotfiles/.init      # Contains scripts and files for automating transition to a new machine.

# --- Disable shell sessions ---
export SHELL_SESSIONS_DISABLE=1                  # Disables .zsh_sessions folder created by Apple terminal

