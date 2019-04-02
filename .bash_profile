# Load .bashrc if exists
if [ -f ~/.bashrc ]; then . ~/.bashrc; fi

# Load dotfiles project entrypoint. It takes care of loading the rest
source ~/bash-dotfiles/.entrypoint