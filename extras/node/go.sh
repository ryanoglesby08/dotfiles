#!/usr/bin/env zsh

echo "Installing and configuring node..."

$HOME/.files/extras/node/install.sh

echo "Configuring npm init options"
npm set init.author.email "ryan.oglesby@trunkclub.com"
npm set init.author.name "Ryan Oglesby"
npm set init.license "MIT"

echo "Linking nvm init script"
ln -sfv $HOME/.files/extras/node/.zshrc-node $HOME

echo "Done installing node."
