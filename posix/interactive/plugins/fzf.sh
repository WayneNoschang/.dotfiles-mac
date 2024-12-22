#!/bin/sh

# fzf > Command-line fuzzy finder written in Go
# Advanced configuration: https://github.com/junegunn/fzf/blob/master/ADVANCED.md

alias browse="fzf --preview 'bat --style=numbers --color=always {}' --preview-window '~3'"

# FZF shell integration
[[ $(basename $SHELL) = 'zsh' ]] && source <(fzf --zsh) || eval "$(fzf --bash)"

export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
  --border="rounded" --border-label="" --preview-window="border-rounded" --padding="0,0,0,0"
  --prompt=" " --marker="+" --pointer="▸" --separator="─" --scrollbar="│" --info="right"'

if defaults read -globalDomain AppleInterfaceStyle &> /dev/null; then
  # export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
  # --color=fg:#656d79,fg+:#cfd8e3,bg:#1c2027,bg+:#1c2027
  # --color=hl:#6499ee,hl+:#6499ee,info:#a984e9,marker:#d2ab52
  # --color=prompt:#6499ee,spinner:#e3776c,pointer:#cfd8e3,header:#a984e9
  # --color=border:#304e74,scrollbar:#304e74,label:#656d79,query:#6499ee'
  export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
  --color=fg:#656d79,fg+:#cfd8e3,bg:#1c2027,bg+:#1c2027
  --color=hl:#314b75,hl+:#6499ee,info:#a984e9,marker:#d2ab52
  --color=prompt:#6499ee,spinner:#e3776c,pointer:#cfd8e3,header:#afb9c5
  --color=border:#373f4d,scrollbar:#373f4d,preview-fg:#afb9c5,label:#656d79
  --color=query:#6499ee'
else
  # export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
  # --color=fg:#656d76,bg:#ffffff,hl:#ffffff
  # --color=fg+:#1f2328,bg+:#deeeff,hl+:#953800
  # --color=info:#9a6700,prompt:#0969da,pointer:#8250df
  # --color=marker:#1a7f37,spinner:#24292f,header:#eff1f3'
  export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
  --color=fg:#8d949e,fg+:#1f2227,bg:#f6f7f9,bg+:#f6f7f9
  --color=hl:#809cd1,hl+:#2e67d2,info:#7a52d7,marker:#d3ac3b
  --color=prompt:#2e67d2,spinner:#be3535,pointer:#1f2227,header:#1f2227
  --color=border:#1f2227,preview-fg:#585f69,label:#8d949e,query:#2e67d2
  --color=disabled:#8d949e'
fi
