#!/bin/sh

# fzf > Command-line fuzzy finder written in Go
# Advanced configuration: https://github.com/junegunn/fzf/blob/master/ADVANCED.md

alias browse="fzf --preview 'bat --style=numbers --color=always {}' --preview-window '~3'"

# FZF shell integration
[[ $(basename $SHELL) = 'zsh' ]] && source <(fzf --zsh) || eval "$(fzf --bash)"

export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'--border="none" --padding="1" --prompt=" " --marker="+" --pointer="▸" --info="right" --color=fg:7,fg+:-1,bg:-1,bg+:-1
--color=hl:4,hl+:4,info:5,marker:3 --color=prompt:4,spinner:1,pointer:-1,header:-1 --color=border:0,scrollbar:0,preview-fg:-1,label:-1 --color=query:4'
