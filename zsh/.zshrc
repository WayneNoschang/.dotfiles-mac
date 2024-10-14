# .zshrc > Startup file sourced for interactive shells
# Man page:  `man zsh`
# Official website:  https://zsh.sourceforge.io/


# --- Zsh speed test start ---
if [[ -n "$ZSH_DEBUGRC" ]]; then
  zmodload zsh/zprof
fi


# --- POSIX startup files ---
for sh_startup_file in $USER_SCRIPTS_HOME/startup/*.sh(N); do
  source $sh_startup_file
done

# --- $ZDOTDIR/startup files ---
for zsh_startup_file in "${ZDOTDIR:-$HOME}"/startup/*.zsh(N); do
  source "${zsh_startup_file}"
done

# --- POSIX plugin files ---
for sh_plugin_file in $USER_SCRIPTS_HOME/plugins/*.sh(N); do
  source "$sh_plugin_file"
done

# --- $ZDOTDIR/plugins files ---
for zsh_plugin_file in "${ZDOTDIR:-$HOME}"/plugins/*.zsh(N); do
  source "${zsh_plugin_file}"
done

# --- Functions ($ZDOTDIR/functions) ---
fpath+=($ZDOTDIR/functions)
autoload -Uz ${fpath[-1]}/*(:t)


# --- Zsh speed test record ---
if [[ -n "$ZSH_DEBUGRC" ]]; then
  zprof
fi


# NOTES

# Awesome lists
# Awesome Zsh plugins: https://github.com/unixorn/awesome-zsh-plugins

# Tutorials
# How to speed up zsh load time:  https://htr3n.github.io/2018/07/faster-zsh/

# Reminders
# Add a file named `$HOME/.hushlogin` to suppress shell login messages
