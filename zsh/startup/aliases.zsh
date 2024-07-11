# Aliases for builtin commands and pre-installed applications


# ZSH aliasing: https://zsh.sourceforge.io/Doc/Release/Shell-Grammar.html#Aliasing
# Moving to zsh: Aliases and Functions



# Readable PATH and FPATH output
alias lpath='echo $PATH | tr ":" "\n"'
alias lfpath='echo $fpath | tr " " "\n"'

# Zsh startup speed test
alias ztest="time ZSH_DEBUGRC=1 zsh -i -c exit"

# Git aliases for long or complex commands
alias gitree="git ls-tree --full-tree --name-only -r HEAD"
