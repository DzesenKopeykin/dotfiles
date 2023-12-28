# Set up virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
# export VIRTUALENVWRAPPER_SCRIPT=/usr/bin/virtualenvwrapper.sh
# source /usr/bin/virtualenvwrapper_lazy.sh
source /usr/bin/virtualenvwrapper.sh

# Set up Node Version Manager
source /usr/share/nvm/init-nvm.sh

eval "$(starship init zsh)"



alias confzsh="nvim $HOME/.dotfiles/configs/zsh/.zshrc"
alias confstarship="nvim $HOME/.dotfiles/configs/starship/starship.toml"
alias confkitty="nvim $HOME/.dotfiles/configs/kitty/kitty.conf"

alias ls="ls --color=auto"
alias lsal="ls -al"
function dockerps {
    docker ps $@ --format '{ "ID":"{{.ID}}", "Names":"{{.Names}}", "Status":"{{.Status}}", "State":"{{.State}}", "Size":"{{.Size}}", "Networks":"{{.Networks}}", "Ports":"{{.Ports}}", "CreatedAt":"{{.CreatedAt}}" }' | jq
}

alias gstatus="git status"
alias gdiff="git diff"
alias glog="git log --graph --oneline --all --date-order"
alias grestore="git restore"
alias gcheckout="git checkout"
alias gmerge="git merge"
alias gadd="git add"
alias gcommit="git commit -m"
alias gpush="git push"
alias gpull="git pull"



export GROFF_NO_SGR=1



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
