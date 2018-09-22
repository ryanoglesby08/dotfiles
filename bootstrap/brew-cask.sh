#!/usr/bin/env bash

echo "Installing brew cask applications..."

apps=(
    1password
    atom
    caffeine
    docker
    firefox
    google-chrome
    intellij-idea
    iterm2
    java
    nordvpn
    slack
    spotify
    virtualbox
    visual-studio-code
    vlc
    webstorm
)

brew cask install "${apps[@]}"
brew cask cleanup

echo "Done installing brew cask applications"
