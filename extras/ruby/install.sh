#!/usr/bin/env zsh

echo "Installing rvm..."

brew install gpg

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | zsh -s stable --ignore-dotfiles

echo "Done installing rvm"
