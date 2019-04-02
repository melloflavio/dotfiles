# GIT

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

# PS1

RESET="\[\017\]"
NORMAL="\[\033[0m\]"
RED="\[\033[31;1m\]"
YELLOW="\[\033[33;1m\]"
WHITE="\[\033[37;1m\]"
SELECT="if [ \$? = 0 ]; then echo \"${YELLOW}\"; else echo \"${RED}\"; fi"


#export PS1="\w \[\033[0;33m\]$(__git_ps1) \[\033[0m\] >$ "
export PS1="${RESET} \`${SELECT}\`\w ${WHITE}\$(__git_ps1) ${NORMAL}\$ "