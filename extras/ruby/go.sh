#!/usr/bin/env zsh

echo "Installing and configuring ruby..."

$HOME/.files/extras/ruby/install.sh

echo "Configuring bundler"
mkdir -p $HOME/.bundle && ln -sfv $HOME/.files/extras/ruby/bundler/config $HOME/.bundle

echo "Linking rvm init script to bash profile"
ln -sfv $HOME/.files/extras/ruby/.zshrc-ruby $HOME

echo "Done installing ruby."
