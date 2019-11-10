#!/usr/bin/env zsh

echo "Installing brew cask applications..."

apps=(
    1password
    atom
    caffeine
    google-chrome
    iterm2
    nordvpn
    spotify
    visual-studio-code
)

echo "Installing brew cask applications: ${apps[@]}..."

brew cask install "${apps[@]}"
brew cleanup

echo "Done installing brew cask applications"
