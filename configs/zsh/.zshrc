# Set up virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
# export VIRTUALENVWRAPPER_SCRIPT=/usr/bin/virtualenvwrapper.sh
# source /usr/bin/virtualenvwrapper_lazy.sh
source /usr/bin/virtualenvwrapper.sh

# Set up Node Version Manager
source /usr/share/nvm/init-nvm.sh

eval "$(starship init zsh)"


alias ls="ls --color=auto"
alias lsal="ls -al"
function dockerps {
    docker ps $@ --format '{ "ID":"{{.ID}}", "Names":"{{.Names}}", "Status":"{{.Status}}", "State":"{{.State}}", "Size":"{{.Size}}", "Networks":"{{.Networks}}", "Ports":"{{.Ports}}", "CreatedAt":"{{.CreatedAt}}" }' | jq
}



# Plug in plugins ;)

# zsh-autosuggestions
# source $HOME/.dotfiles/plugins/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# zsh-history-substring-search
source $HOME/.dotfiles/plugins/zsh/zsh-history-substring-search/zsh-history-substring-search.zsh

#zsh-syntax-highlighting
# plug in syntax highlighting at the end of .zshrc
source $HOME/.dotfiles/plugins/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh



# Key bindings

bindkey '^K' history-substring-search-up
bindkey '^J' history-substring-search-down
