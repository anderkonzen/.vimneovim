export DOTFILES=$HOME/.dotfiles

source $DOTFILES/zsh/.local_profile

source ~/.zplug/init.zsh

# Let zplug manage zplug
zplug 'zplug/zplug', hook-build:'zplug --self-manage'

# Plugins
zplug "modules/history",        from:prezto, depth:1
zplug "plugins/git",            from:oh-my-zsh, depth:1
zplug "plugins/docker",         from:oh-my-zsh, depth:1
zplug "plugins/docker-compose", from:oh-my-zsh, depth:1
zplug "plugins/extract",        from:oh-my-zsh, depth:1
zplug "lukechilds/zsh-nvm",     from:github, depth:1
zplug "robbyrussell/oh-my-zsh", use:"lib/grep.zsh", depth:1
zplug "robbyrussell/oh-my-zsh", use:"lib/key-bindings.zsh", depth:1

# Themes
zplug "mafredri/zsh-async", from:github
zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme

# Others
zplug "zsh-users/zsh-completions",         defer:0
zplug "zsh-users/zsh-autosuggestions",     defer:2, on:"zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting", defer:3, on:"zsh-users/zsh-autosuggestions"

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load #--verbose

# zsh customization
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=240'

# pure customization
PURE_PROMPT_SYMBOL=λ

# jenv (jenv.be)
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv &> /dev/null; then eval "$(rbenv init -)"; fi

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# z
#. /usr/local/etc/profile.d/z.sh

# fasd
eval "$(fasd --init auto)"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'

# base16
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

# Other files with pattern _*.zsh will be sourced
for config ($DOTFILES/zsh/_*.zsh) source $config

# Add other apps to PATH
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/Tools/apache-maven-3.5.2:$HOME/Tools/apache-maven-3.5.2/bin
export PATH=$PATH:$HOME/Tools/consul
export JAVA_HOME="$(jenv javahome)"


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/anderson.konzen/.sdkman"
[[ -s "/home/anderson.konzen/.sdkman/bin/sdkman-init.sh" ]] && source "/home/anderson.konzen/.sdkman/bin/sdkman-init.sh"
