#!/usr/bin/env zsh

if command -v brew &> /dev/null
then
  echo "Brew already installed."
else
  echo "Installing brew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

if ! command -v brew &> /dev/null
then
  echo "Brew not installed. Complete all steps to finish the installation, then run this script again."
  exit
fi

brew update
brew upgrade

apps=(
    git
    wget
    vim
)

echo "Installing brew apps: ${apps[@]}..."

brew install "${apps[@]}"
brew cleanup

echo "Linking brew shell setup"
ln -sfv $HOME/.files/bootstrap/.zshrc-brew $HOME

echo "Done installing brew"
