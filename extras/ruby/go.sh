#!/usr/bin/env bash

echo "Installing and configuring ruby..."

$HOME/.files/extras/ruby/install.sh

echo "Configuring bundler"
mkdir -p $HOME/.bundle && ln -sfv ./bundler/config $HOME/.bundle

echo "Linking rvm init script to bash profile"
ln -sfv $HOME/.files/extras/ruby/.bashrc-ruby $HOME

echo "Done installing ruby."
