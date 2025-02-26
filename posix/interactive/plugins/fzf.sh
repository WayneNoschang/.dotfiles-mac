#!/bin/sh

# fzf > Command-line fuzzy finder written in Go
# Advanced configuration: https://github.com/junegunn/fzf/blob/master/ADVANCED.md

alias browse="fzf --preview 'bat --style=numbers --color=always {}' --preview-window '~3'"

# FZF shell integration
[[ $(basename $SHELL) = 'zsh' ]] && source <(fzf --zsh) || eval "$(fzf --bash)"

export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'--border="none" --padding="1" --prompt="> " --marker="▏" --pointer="▎" --info="right" --color=fg:15,fg+:7,bg:-1,bg+:-1
--color=hl:2,hl+:2,info:15,marker:2 --color=prompt:2,spinner:2,pointer:2,header:11 --color=border:0,scrollbar:0,preview-fg:-1,label:-1 --color=query:7'
