#!/bin/sh

# neovim > hyperextensible Vim-based text editor
# https://neovim.io/

# --- Run Commands ---

if [[ ! -L $XDG_CONFIG_HOME/nvim ]]; then
  ln -s $HOME/Projects/lua/nvim/lazyvim $XDG_CONFIG_HOME/nvim
fi

if [[ ! -L $XDG_CONFIG_HOME/nvim-kickstart ]]; then
  ln -s $HOME/Projects/lua/nvim/kickstart $XDG_CONFIG_HOME/nvim-kickstart
fi

# --- Aliases ---

alias vim="nvim"
alias nvim-kickstart="NVIM_APPNAME='nvim-kickstart' nvim"

# --- Parameters ---

export EDITOR="nvim"
export MANWIDTH=100
export MANPAGER="nvim +Man!"

# NOTES
# Managing multiple nvim configs: https://michaeluloth.com/neovim-switch-configs/
