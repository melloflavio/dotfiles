# Undo a `git push`
alias undopush="git push -f origin HEAD^:master"
alias apply-gitignore="git ls-files -ci --exclude-standard -z | xargs -0 git rm --cached"
alias gitk='gitk 2>/dev/null'

# git root
alias gr='[ ! -z `git rev-parse --show-cdup` ] && cd `git rev-parse --show-cdup || pwd`'