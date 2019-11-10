#!/usr/bin/env zsh

echo "Updating brew..."

brew update
brew upgrade

brew cleanup

echo "Done updating brew"
