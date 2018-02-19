#!/usr/bin/env bash

echo "Linking home directory dotfiles..."

ln -sfv ~/.files/home/.bash_profile ~
ln -sfv ~/.files/home/.inputrc ~
ln -sfv ~/.files/home/.vimrc ~

mkdir -p ~/.ssh && ln -sfv ~/.files/tools/ssh/config ~/.ssh

ln -sfv ~/.files/tools/git/.gitconfig ~
ln -sfv ~/.files/tools/git/.gitignore_global ~
