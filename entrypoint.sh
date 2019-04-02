# Load files
for file in  ~/bash-dotfiles/default/*.sh; do
  [ -r "$file" ] && source "$file"
done
unset file

# Load BASH_DOTFILE_SYS files
if [ "$BASH_DOTFILE_SYS" = "windows" ] ; then
    for file in "~/bash-dotfiles/windows/*.sh"; do
        [ -r "$file" ] && source "$file"
    done
elif [ "$BASH_DOTFILE_SYS" ="osx" ] ; then
    for file in "~/bash-dotfiles/osx/*.sh"; do
        [ -r "$file" ] && source "$file"
    done
fi
unset file
