#!/usr/bin/env bash

./install.sh

# Add rvm executable to the path
prepend-path "$HOME/.rvm/bin"

# Bundler config
mkdir -p $HOME/.bundle && ln -sfv ./bundler/config $HOME/.bundle
alias be="bundle exec"

# Add rvm init script to bash profile
ln -sfv $HOME/.files/extras/ruby/.bashrc-ruby $HOME
