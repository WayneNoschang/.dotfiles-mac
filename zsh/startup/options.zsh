# Zsh options: https://zsh.sourceforge.io/Doc/Release/Options.html
# Moving to zsh: Shell Options

# Man page: `man zshoptions`
# List all options: `set -o`
# Use `emulate -LR zsh` to revert options to default settings
#     This can be useful to add at the beginning of zsh scripts

setopt nobeep                  # Beep on error in ZLE.
setopt autocd                  # If command issued is a directory, perform the cd command to that directory.
# setopt autolist              # Automatically list choices on an ambiguous completion.
# setopt automenu              # Automatically use menu completion after the second consecutive request for completion (overridden by MENU_COMPLETE).
# setopt autopushd             # Make cd push the old directory onto the directory stack.
# setopt completeinword        # If unset, the cursor is set to the end of the word if completion is started. Otherwise it stays there and completion is done from both ends.
# setopt correct               # Try to correct the spelling of commands.  

# History options
setopt extendedhistory         # Write the history file in the ':start:elapsed;command' format.
setopt incappendhistory        # Write to the history file immediately, not when the shell exits.
setopt sharehistory            # Share history between all sessions.
setopt histexpiredupsfirst     # Expire a duplicate event first when trimming history.
setopt histignoredups          # Do not record an event that was just recorded again.
setopt histignorealldups       # Delete an old recorded event if a new event is a duplicate.
setopt histfindnodups          # Do not display a previously found event.
setopt histignorespace         # Do not record an event starting with a space.
setopt histsavenodups          # Do not write a duplicate event to the history file.
setopt histverify              # Do not execute immediately upon history expansion.
setopt appendhistory           # append to history file
setopt histnostore             # Don't store history commands
