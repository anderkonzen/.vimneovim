if [ "$(uname 2> /dev/null)" = "Darwin" ];then
  alias brews='brew list -1'
  alias bubo='brew update && brew outdated'
  alias bubc='brew upgrade && brew cleanup'
  alias bubu='bubo && bubc'
  alias cask='brew cask'
  alias brew_update='brew -v update; brew upgrade --force-bottle --cleanup; brew cleanup; brew cask cleanup; brew prune; brew doctor'
  
  # Hide/show all desktop icons (useful when presenting)
  alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
  alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
fi

alias df='df -P -kHl' # disk free report
alias du='du -h -c' # calculate disk usage for a folder

alias pcurl='curl -w "\n\n%{time_total} secs" '

unamestr=`uname`
if [[ $unamestr == 'Darwin' ]];then
    colorflag="-G"
else
    colorflag="--color=auto"
fi
alias ls="${aliases[ls]:-ls} ${colorflag}"
