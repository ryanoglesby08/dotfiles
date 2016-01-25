#!/usr/bin/env bash

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap homebrew/versions

brew update
brew upgrade

apps=(
    chromedriver
    git
    heroku-toolbelt
    jq
    mysql
    node
    svn
    wget
    vim
)

brew install "${apps[@]}"
