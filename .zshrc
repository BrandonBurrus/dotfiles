# Brandon Burrus .zshrc
clear

plugins=(common-aliases git tmux vi-mode zsh-autosuggestions zsh-syntax-highlighting)

bindkey -v

export ANDROID_HOME=~/Library/Android/sdk
export ANDROID_SDK_ROOT=~/Library/Android/sdk
export ECLIM=/Applications/Eclipse.app/Contents/Eclipse
export EDITOR="mvim"
export GOPATH=~/Files/Go
export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-14.jdk/Contents/Home
export JDK_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-14.jdk/Contents/Home
export M2_PATH=~/.m2
export ZSH=~/.oh-my-zsh
export ZSH_THEME="agnoster"
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#bbbbbb,bg=bold"
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"

source $ZSH/oh-my-zsh.sh

# Path additions

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:~/.scripts
export PATH=$PATH:~/Files/Clairvoyant/LMS/Setup
export PATH=$PATH:~/Files/apache-tomcat-9.0.40/bin
export PATH=$PATH:~/flutter/bin

# Aliases

if [[ -f ~/.aliases ]]; then
  source ~/.aliases
fi

# Bash profile

if [[ -f ~/.bash_profile ]]; then
  source ~/.bash_profile;
fi
