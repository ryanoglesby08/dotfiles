#!/usr/bin/env bash

echo "Installing brew cask applications..."

apps=(
    # alfred
    # dash
    # dropbox
    # firefox
    # firefox-nightly
    # flux
    # glimmerblocker
    # google-chrome
    # google-chrome-canary
    # google-drive
    # hammerspoon
    # kaleidoscope
    # macdown
    # opera
    # screenflow
    # sourcetree
    # spotify
    # sublime-text3
    # transmit
    # virtualbox
    # vlc
    # webstorm

    # My apps
    Caskroom/cask/atom
)

brew cask install "${apps[@]}"
brew cask cleanup

echo "Done installing brew cask"
