#!/bin/sh
# starship > Cross-shell prompt for astronauts
# https://starship.rs

# --- Parameters ---

export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/$(basename $SHELL)/starship.toml" # Starship config file location
# export STARSHIP_CACHE="$XDG_CACHE_HOME/starship"

# --- Run Commands ---
eval "$(starship init $(basename $SHELL))"
