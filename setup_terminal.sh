#!/usr/bin/env bash

echo "Linking home directory dotfiles..."
ln -sfv ~/.files/home/.bash_profile ~
ln -sfv ~/.files/home/.inputrc ~
ln -sfv ~/.files/tools/git/.gitconfig ~

mkdir -p ~/.bundle && ln -sfv ~/.files/tools/bundler/config ~/.bundle
