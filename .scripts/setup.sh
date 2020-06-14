#!/bin/bash

export HOMEBREW_NO_AUTO_UPDATE=1

# Install or upgrade Homebrew
which -s brew
if [[ $? != 0 ]] ; then
    echo "🍺 Installing Homebrew"
    /bin/bash -c `curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh`
else
    echo "🍻 Upgrading Homebrew"
    brew update
fi

# Install Oh-my-zsh
if ! [[ -d ~/.oh-my-zsh ]]; then
    echo '💥 Installing oh-my-zsh'
    /bin/bash -c `curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh`
fi

# Install Programs
PROGRAMS=(
    ack
    awscli
    azure-cli
    cmake
    deno
    docker
    doctl
    fzf
    git
    go
    gradle
    hub
    hyperkit
    jq
    kubernetes-cli
    liquibase
    macvim
    maven
    minikube
    mongodb-community
    mono
    mutt
    mysql
    node
    nvm
    speedtest-cli
    tig
    tldr
    tmux
    tree
    zsh
)

for PROGRAM in "${PROGRAMS[@]}"; do
    if brew ls --versions "$PROGRAM" &> /dev/null; then
        echo "✨ Upgrading $PROGRAM"
        brew upgrade "$PROGRAM"
    else
        echo "🚀 Installing $PROGRAM"
        brew install "$PROGRAM"
    fi
done

# Install Apps
APPS=(
    dash
    google-chrome
    iterm2
    jetbrains-toolbox
    mongodb-compass-community
    postman
    slack
    spotify
    springtoolsuite
    visual-studio-code
)

for APP in "${APPS[@]}"; do
    if ! brew cask ls --versions "$APP" &> /dev/null; then
        echo "🚀 Installing $APP"
        brew cask install --appdir="/Applications" "$APP"
    fi
done

# Clean up
echo "♻️  Performing cleanup"
brew cleanup
rm -f -r /Library/Caches/Homebrew/*

echo "⚡️ Setup complete"

