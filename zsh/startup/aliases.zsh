# Aliases for builtin and pre-installed commands
# Alias command: `man zshbuiltins`
# Aliasing: `man zshmisc`

# Moving to zsh: Aliases and Functions


# Readable PATH and FPATH output
alias lpath='echo $path | tr " " "\n"'
alias lfpath='echo $fpath | tr " " "\n"'
alias lcdpath='echo $cdpath | tr " " "\n"'

# Zsh startup speed test
alias ztest="time ZSH_DEBUGRC=1 zsh -i -c exit"

# Git aliases for long or complex commands
alias gitree="git ls-tree --full-tree --name-only -r HEAD"
