# Load .bashrc if exists
if [ -f ~/.bashrc ]; then . ~/.bashrc; fi

# 'windows' | 'osx'
export BASH_DOTFILE_SYS='windows'

# Load dotfiles project entrypoint. It takes care of loading the rest
source ~/bash-dotfiles/entrypoint.sh
