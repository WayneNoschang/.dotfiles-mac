#!/bin/sh

# neovim > hyperextensible Vim-based text editor
# https://neovim.io/

# --- Run Commands ---

if [[ ! -L $XDG_CONFIG_HOME/nvim-lazyvim ]]; then
  ln -s $HOME/Projects/lua/nvim/lazyvim $XDG_CONFIG_HOME/nvim-lazyvim
fi

if [[ ! -L $XDG_CONFIG_HOME/nvim-kickstart ]]; then
  ln -s $HOME/Projects/lua/nvim/kickstart $XDG_CONFIG_HOME/nvim-kickstart
fi

# --- Aliases ---

# https://michaeluloth.com/neovim-switch-configs/
alias vim="NVIM_APPNAME='nvim-lazyvim' nvim"
alias nvim="NVIM_APPNAME='nvim-lazyvim' nvim"
alias nvim-lazyvim="NVIM_APPNAME='nvim-lazyvim' nvim"
alias nvim-kickstart="NVIM_APPNAME='nvim-kickstart' nvim"

# --- Parameters ---

# export NVIM_APPNAME=".config-nvim-dir"
export EDITOR="nvim"
export MANWIDTH=100
export MANPAGER="NVIM_APPNAME='nvim-lazyvim' nvim +Man!"
