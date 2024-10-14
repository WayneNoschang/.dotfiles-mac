# Aliases for builtin and pre-installed commands
# Alias command: `man zshbuiltins`
# Aliasing: `man zshmisc`

# Moving to zsh: Aliases and Functions

alias it2delcolors='defaults delete com.googlecode.iterm2 "Custom Color Presets"'

# Readable PATH and FPATH output
# alias lpath='for path_dir in $path; do; \ls $path_dir &> /dev/null && echo $path_dir; done; path_dir=""'
alias lpath='echo $path | tr " " "\n"'
alias lfpath='echo $fpath | tr " " "\n"'
alias lcdpath='echo $cdpath | tr " " "\n"'

# Zsh startup speed test
alias ztest="time ZSH_DEBUGRC=1 zsh -i -c exit"
