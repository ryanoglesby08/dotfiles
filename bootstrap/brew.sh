#!/usr/bin/env bash

echo "Installing brew..."

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap homebrew/services

brew update
brew upgrade

apps=(
    git
    wget
    vim
)

brew install "${apps[@]}"
brew cleanup

echo "Done installing brew"
