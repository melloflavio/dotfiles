# Load files
for file in  ~/bash-dotfiles/default/*.sh; do
  [ -r "$file" ] && source "$file"
done
unset file