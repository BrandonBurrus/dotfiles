# Brandon Burrus .zshrc

plugins=(git zsh-autosuggestions zsh-syntax-highlighting brew fzf iterm2 mvn tmux vi-mode common-aliases)

export ANDROID_HOME=/Users/Brandon/Library/Android/sdk
export ANDROID_SDK_ROOT=/Users/Brandon/Library/Android/sdk
export ECLIM=/Users/Brandon/eclipse/jee-2020-03/Eclipse.app/Contents/Eclipse
export FZF_DEFAULT_COMMAND='ag --ignore node_modules -g'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export GOPATH=~/Files/Go
export M2_PATH=~/.m2
export PATH=$PATH:$GOPATH/bin
export ZSH="/Users/Brandon/.oh-my-zsh"
export ZSH_THEME="agnoster"

source $ZSH/oh-my-zsh.sh

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#bbbbbb,bg=bold"

alias a=aws
alias c=clear
alias code=code-insiders
alias d=docker
alias dc=docker-compose
alias dj=django-admin
alias g=git
alias gb='git branch'
alias gco='git checkout'
alias gl='git log --oneline -n 7'
alias gp='git push'
alias gpr='git pull'
alias gs='git status'
alias h=hyperkit
alias k=kubectl
alias kube=kubectl
alias lint="yarn lint"
alias m=mvn
alias mini=minikube
alias n=npm
alias omz="mvim ~/.oh-my-zsh"
alias pip=pip3
alias py=python3
alias q=exit
alias start="yarn start"
alias test="yarn test"
alias v=mvim
alias vim=mvim
alias vimrc="mvim ~/.vimrc"
alias y=yarn
alias zshc="mvim ~/.zshrc"

zle -N zle-line-init
zle -N zle-line-finish
zle -N zle-keymap-select
bindkey -v

function zle-keymap-select zle-line-init {
    case $KEYMAP in
        vicmd)      print -n -- "\E]50;CursorShape=0\C-G";;
        viins|main) print -n -- "\E]50;CursorShape=1\C-G";;
    esac
    zle reset-prompt
    zle -R
}

function zle-line-finish {
    print -n -- "\E]50;CursorShape=0\C-G"
}

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"

if [[ -f ~/.bash_profile ]]; then
  . ~/.bash_profile;
fi

clear

