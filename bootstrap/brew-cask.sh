#!/usr/bin/env bash

echo "Installing brew cask applications..."

apps=(
    1password
    atom
    caffeine
    docker
    dropbox
    evernote
    firefox
    google-chrome
    intellij-idea
    iterm2
    java
    nordvpn
    slack
    spotify
    virtualbox
    vlc
    webstorm
    zoomus
)

brew cask install "${apps[@]}"
brew cask cleanup

echo "Done installing brew cask applications"
