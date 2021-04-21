# Brandon Burrus .zshrc
clear

plugins=(\
  aws \
  common-aliases \
  dash \
  docker \
  docker-compose \
  doctl \
  dotenv \
  fzf \
  gcloud \
  git \
  golang \
  gradle \
  helm \
  kubectl \
  mvn \
  postgres \
  python \
  spring \
  tmux \
  vi-mode \
  zsh-autosuggestions \
  zsh-syntax-highlighting \
)

bindkey -v

export ANDROID_HOME=$HOME/Library/Android/sdk
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export EDITOR="mvim"
export GOPATH=$HOME/go
export M2_PATH=$HOME/.m2
export MYVIMRC=$HOME/.vimrc
export MYZSHRC=$HOME/.zshrc
export ZSH=$HOME/.oh-my-zsh
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#bbbbbb,bg=bold"
export ZSH_THEME="agnoster"
export NVM_DIR="$HOME/.nvm"
#   [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"
#   [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"

source $ZSH/oh-my-zsh.sh

# Path additions
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$HOME/.config/yarn/global/node_modules/.bin
export PATH=$PATH:$HOME/.scripts
export PATH=$PATH:$HOME/.yarn/bin
export PATH=$PATH:$HOME/flutter/bin
export PATH=$PATH:$HOME/ij/bin

# Aliases
[ -f ~/.aliases ] && source ~/.aliases

# Bash profile
[ -f ~/.bash_profile ] && source ~/.bash_profile;

# Jabba
# [ -s "/Users/brandon/.jabba/jabba.sh" ] && source "/Users/brandon/.jabba/jabba.sh"

clear
complete -F __start_kubectl k
