#!/usr/bin/env zsh

echo "Installing brew cask applications..."

apps=(
    1password
    iterm2
    visual-studio-code
)

echo "Installing brew cask applications: ${apps[@]}..."

brew install --cask "${apps[@]}"
brew cleanup

echo "Done installing brew cask applications"
