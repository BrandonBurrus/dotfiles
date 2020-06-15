# Brandon Burrus .zshrc

plugins=(git zsh-autosuggestions zsh-syntax-highlighting tmux vi-mode common-aliases)

export ANDROID_HOME=~/Library/Android/sdk
export ANDROID_SDK_ROOT=~/Library/Android/sdk
export ECLIM=~/eclipse/jee-2020-03/Eclipse.app/Contents/Eclipse
export FZF_DEFAULT_COMMAND='ag --ignore node_modules -g'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export GOPATH=~/Files/Go
export M2_PATH=~/.m2
export PATH=$PATH:$GOPATH/bin
export ZSH=~/.oh-my-zsh
export ZSH_THEME="agnoster"
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#bbbbbb,bg=bold"
export ZSH_TMUX_AUTOSTART=true
export PATH=$PATH:~/.scripts

source $ZSH/oh-my-zsh.sh

if [[ -f ~/.aliases ]]; then
  source ~/.aliases
fi

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
  source ~/.bash_profile;
fi

