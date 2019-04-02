# programs
alias st='open -a "Sublime Text 2"'
# also/or do this:
# ln -s "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" ~/bin/subl
alias preview="open -a '$PREVIEW'"
alias xcode="open -a '/Applications/Xcode.app'"
alias filemerge="open -a '/Developer/Applications/Utilities/FileMerge.app'"
alias safari="open -a safari"
alias firefox="open -a firefox"
alias opera="open -a opera"
alias chrome="open -a google\ chrome"
alias chromium="open -a chromium"
alias dashcode="open -a dashcode"
alias f='open -a Finder'

#sound reset
alias resetsound="sudo kill -9 `ps ax|grep 'coreaudio[a-z]' |awk '{print $1}'`"

# OS X has no `md5sum`, so use `md5` as a fallback
type -t md5sum > /dev/null || alias md5sum="md5"

# Empty the Trash on all mounted volumes and the main HDD
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes 2> /dev/null ; rm -rfv ~/.Trash 2> /dev/null"
alias emptyderived="sudo rm -rvf ~/Library/Developer/Xcode/DerivedData/* 2> /dev/null"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# PlistBuddy alias, because sometimes `defaults` just doesn’t cut it
alias plistbuddy="/usr/libexec/PlistBuddy"

# Flush Directory Service cache
alias flush="dscacheutil -flushcache"
alias dnsflush="sudo killall -HUP mDNSResponder"
alias flushdns="sudo killall -HUP mDNSResponder"

# Recursively delete `.DS_Store` files
alias cleanup="find . -name '*.DS_Store' -type f -ls -delete"