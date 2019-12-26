# Gets executed for interactive, non-login shells
# Prompt
[[ -f "$HOME/.bash_prompt" ]] && source "$HOME/.bash_prompt"
####################################### start
# ingnore duplicates(continuous occurrences od a command) in history
export HISTCONTROL=ignoredups
# ignore some commands showing in history
# export HISTIGNORE="pwd:ls:la:ll:kill:killall:more:cd:"
# Enable huge history
export HISTFILESIZE=9999999999
export HISTSIZE=9999999999
# Save timestamp info for every command
export HISTTIMEFORMAT="[%F %T] ~~~ "
# Dump the history file after every command
shopt -s histappend
export PROMPT_COMMAND="history -a;"



# Common
[[ -s "$HOME/.commonrc" ]] && source "$HOME/.commonrc"