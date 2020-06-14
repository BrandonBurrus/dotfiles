#!/bin/bash

echo "⚡️ Starting Setup"

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
echo "⚡️ Installing Programs"

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
echo "⚡️ Installing Apps"

APPS=(
    dash
    google-chrome
    iterm2
    jetbrains-toolbox
    mongodb-compass-community
    mysqlworkbench
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

# Install NPM Packages
echo "📦 Installing NPM Packages"

PACKAGES=(
    @angular/cli
    @vue/cli
    caniuse-cmd
    conventional-changelog-cli
    create-react-app
    gatsby-cli
    jest
    lerna
    majestic
    netlify-cli
    next
    node-sass
    nodemon
    parcel
    react-devtools
    release-it
    serve
    ts-node
    typescript
    vsce
    yarn
)

npm i -g "${PACKAGES[@]}"

# Clean up
echo "♻️  Performing cleanup"
brew cleanup
rm -f -r /Library/Caches/Homebrew/*

echo "⚡️ Setup complete"

