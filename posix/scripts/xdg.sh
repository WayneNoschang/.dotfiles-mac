#!/bin/sh

# --- XDG base directories ---

export XDG_CONFIG_HOME="$HOME/.config"     # Settings files for applications, store data in VCS.
export XDG_DATA_HOME="$HOME/.local/share"  # Data (often end-user data) files that an application works on.
export XDG_STATE_HOME="$HOME/.local/state" # Non-essential data that persists on reboot, unlike cache or temp files.
export XDG_CACHE_HOME="$HOME/.cache"       # Non-essential and re-creatable data for quick access.

# --- Additional directories ---

PATH="$HOME/.local/bin:$PATH"                       # Add local binary folder to PATH
export USER_BUILDS_HOME="$HOME/.local/builds"       # Contains packages built from source (i.e. plugins/packages without brew support).
export USER_LANGUAGES_HOME="$HOME/.local/languages" # Directory for programing languages

export USER_INTERACTIVE_HOME="$HOME/.config/shell/interactive"  # Scripts to be sourced within interactive (rc) files.
export USER_SCRIPTS_HOME="$HOME/.config/shell/scripts"          # Scripts to be sourced on any shell invocation.
export USER_INTERPRETER_HOME="$HOME/.config/$(basename $SHELL)" # Shell config directory

# NOTES

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
