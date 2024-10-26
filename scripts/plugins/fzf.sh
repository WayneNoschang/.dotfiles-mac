#!/bin/sh
# fzf > Command-line fuzzy finder written in Go

if type fzf &> /dev/null
then
  for sh_file in "$(brew --prefix fzf)"/shell/*."$(basename $SHELL)"; do
    source $sh_file
  done
fi
