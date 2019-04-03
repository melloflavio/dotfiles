# Load .bashrc if exists
if [ -f ~/.bashrc ]; then . ~/.bashrc; fi

# 'windows' | 'osx'
export SHELL_DOTFILE_SYS='windows'

# 'bash' | 'zsh'
export SHELL_DOTFILE_SHELL='zsh'

# Load dotfiles project entrypoint. It takes care of loading the rest
source ~/bash-dotfiles/entrypoint.sh
