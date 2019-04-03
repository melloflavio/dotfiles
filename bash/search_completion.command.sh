# https://unix.stackexchange.com/questions/5366/command-line-completion-from-command-history

# Key bindings, up/down arrow searches through history
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
bind '"\eOA": history-search-backward'
bind '"\eOB": history-search-forward'

# Ignores cases in autocomplete (TAB)
bind "set completion-ignore-case on"
