#!/usr/bin/env zsh

# Fast Node Manager: https://github.com/Schniz/fnm

echo "Installing fnm and Node.js LTS version..."

brew install fnm
eval "$(fnm env)"

fnm install --lts

echo "Done installing fnm"