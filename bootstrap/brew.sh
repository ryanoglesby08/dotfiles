#!/usr/bin/env bash

echo "Installing brew..."

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap homebrew/versions

brew update
brew upgrade

apps=(
    chromedriver
    git
    gpg
    heroku-toolbelt
    jq
    mysql
    node
    svn
    wget
    vim
)

brew install "${apps[@]}"
brew cleanup

echo "Done installing brew"
