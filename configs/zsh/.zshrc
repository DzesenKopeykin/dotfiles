# Set up virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
# export VIRTUALENVWRAPPER_SCRIPT=/usr/bin/virtualenvwrapper.sh
# source /usr/bin/virtualenvwrapper_lazy.sh
source /usr/bin/virtualenvwrapper.sh

# Set up Node Version Manager
source /usr/share/nvm/init-nvm.sh

alias ll="ls -al"

# plug in syntax highlighting at the end of .zshrc
source $HOME/.dotfiles/plugins/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
