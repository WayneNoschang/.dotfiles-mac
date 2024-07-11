# ███████╗███████╗██╗  ██╗██████╗  ██████╗
# ╚══███╔╝██╔════╝██║  ██║██╔══██╗██╔════╝
#   ███╔╝ ███████╗███████║██████╔╝██║     
#  ███╔╝  ╚════██║██╔══██║██╔══██╗██║     
# ███████╗███████║██║  ██║██║  ██║╚██████╗
# ╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝


# --- Zsh speed test start ---
if [[ -n "$ZSH_DEBUGRC" ]]; then
  zmodload zsh/zprof
fi





# --- Startup files ($ZDOTDIR/startup) ---
for startup_file in "${ZDOTDIR:-$HOME}"/startup/*.zsh(N); do
  source "${startup_file}"
done



# --- Plugins ($ZDOTDIR/plugins) ---
for plugin_file in "${ZDOTDIR:-$HOME}"/plugins/*.zsh(N); do
  source "${plugin_file}"
done



# --- Functions ($ZDOTDIR/functions) ---
fpath+=($ZDOTDIR/functions) 



# --- Other configurations ---
# ...





# --- Zsh speed test record ---
if [[ -n "$ZSH_DEBUGRC" ]]; then
  zprof
fi
