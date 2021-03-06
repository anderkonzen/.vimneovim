# brew aliases
# alias brews='brew list -1'
# alias bubo='brew update && brew outdated'
# alias bubc='brew upgrade && brew cleanup'
# alias bubu='bubo && bubc'
# alias cask='brew cask'
# alias brew_update='brew -v update; brew upgrade --force-bottle --cleanup; brew cleanup; brew cask cleanup; brew prune; brew doctor'

alias df='df -P -kHl' # disk free report
alias du='du -h -c' # calculate disk usage for a folder

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

alias pcurl='curl -w "\n\n%{time_total} secs" '

alias ls="${aliases[ls]:-ls} -G"

alias chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'

alias cat=bat
