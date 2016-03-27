#!/usr/bin/env bash

echo "Installing brew cask applications..."

apps=(
    atom
    caffeine
    dropbox
    evernote
    firefox
    google-chrome
    intellij-idea
    iterm2
    rubymine
    screenhero
    skype
    slack
    spotify
    virtualbox
    vlc
    1password
)

brew cask install "${apps[@]}"
brew cask cleanup

echo "Done installing brew cask applications"
