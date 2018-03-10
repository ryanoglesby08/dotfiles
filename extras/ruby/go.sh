#!/usr/bin/env bash

echo "Installing and configuring rvm..."

./install.sh

echo "Adding rvm executable to the path"
prepend-path "$HOME/.rvm/bin"

echo "Configuring bundler"
mkdir -p $HOME/.bundle && ln -sfv ./bundler/config $HOME/.bundle
alias be="bundle exec"

echo "Linking rvm init script to bash profile"
ln -sfv $HOME/.files/extras/ruby/.bashrc-ruby $HOME

echo "Done installing ruby."
