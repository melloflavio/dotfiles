# Load .bashrc if exists
if [ -f ~/.bashrc ]; then . ~/.bashrc; fi

# Load dotfiles project entrypoint. It takes care of loading the rest
# source ~/bash-dotfiles/.entrypoint
# Load files
for file in ~/bash-dotfiles/*.sh; do
  [ -r "$file" ] && source "$file"
done
unset file