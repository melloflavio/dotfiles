# Load files
for file in  ~/bash-dotfiles/default/*.sh; do
  [ -r "$file" ] && source "$file"
done
unset file

# Load SHELL_DOTFILE_SYS files
if [ "$SHELL_DOTFILE_SYS" = "windows" ] ; then
    for file in ~/bash-dotfiles/windows/*.sh; do
        [ -r "$file" ] && source "$file"
    done
elif [ "$SHELL_DOTFILE_SYS" = "osx" ] ; then
    for file in ~/bash-dotfiles/osx/*.sh; do
        [ -r "$file" ] && source "$file"
    done
fi
unset file

# Load SHELL_DOTFILE_SHELL files
if [ "$SHELL_DOTFILE_SHELL" = "bash" ] ; then
    for file in ~/bash-dotfiles/bash/*.sh; do
        [ -r "$file" ] && source "$file"
    done
elif [ "$SHELL_DOTFILE_SHELL" = "zsh" ] ; then
    for file in ~/bash-dotfiles/zsh/*.sh; do
        [ -r "$file" ] && source "$file"
    done
fi
unset file

# Finish pyenv setup.
# Affects $PATH
# KEEP NEAR END
source ~/bash-dotfiles/default/pyenv.config.extended
