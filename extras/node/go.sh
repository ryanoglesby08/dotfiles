#!/usr/bin/env zsh

echo "Installing and configuring node..."

# Fast Node Manager: https://github.com/Schniz/fnm
echo "Installing fnm and Node.js LTS version..."
brew install fnm
eval "$(fnm env)"

fnm install --lts

echo "Done installing fnm"

echo "Configuring npm init options"
npm set init.author.email "ryan.oglesby08@gmail.com"
npm set init.author.name "Ryan Oglesby"
npm set init.license "MIT"

echo "Linking fnm shell setup"
ln -sfv $HOME/.files/extras/node/.zshrc-node $HOME

echo "Done installing node."
