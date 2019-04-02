# Undo a `git push`
alias undopush="git push -f origin HEAD^:master"
alias apply-gitignore="git ls-files -ci --exclude-standard -z | xargs -0 git rm --cached"
alias gitk='gitk 2>/dev/null'

# git root
alias gr='[ ! -z `git rev-parse --show-cdup` ] && cd `git rev-parse --show-cdup || pwd`'

# git log with per-commit cmd-clickable GitHub URLs (iTerm)
function gf() {
  local remote="$(git remote -v | awk '/^origin.*\(push\)$/ {print $2}')"
  [[ "$remote" ]] || return
  local user_repo="$(echo "$remote" | perl -pe 's/.*://;s/\.git$//')"
  git log $* --name-status --color | awk "$(cat <<AWK
    /^.*commit [0-9a-f]{40}/ {sha=substr(\$2,1,7)}
    /^[MA]\t/ {printf "%s\thttps://github.com/$user_repo/blob/%s/%s\n", \$1, sha, \$2; next}
    /.*/ {print \$0}
AWK
  )" | less -F
}

# take this repo and copy it to somewhere else minus the .git stuff.
function gitexport(){
	mkdir -p "$1"
	git archive master | tar -x -C "$1"
}

function showmerge(){
	if [ $2 ]
	then
		git logm $1 | grep "Merge branch '$2'"
	else
		git logm | grep "Merge branch '$1'"
	fi
}
