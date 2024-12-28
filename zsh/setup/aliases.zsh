# Aliases for builtin and pre-installed commands
# Alias command: `man zshbuiltins` and aliasing: `man zshmisc`

alias zref='open $ZDOTDIR/zsh-reference-card.pdf'

# Readable PATH and FPATH output
# alias lpath='for path_dir in $path; do; \ls $path_dir &> /dev/null && echo $path_dir; done; path_dir=""'
alias lpath='echo $path | tr " " "\n"'
alias lfpath='echo $fpath | tr " " "\n"'
alias lcdpath='echo $cdpath | tr " " "\n"'

# Zsh startup speed test
alias ztest="time ZSH_DEBUGRC=1 zsh -i -c exit"
