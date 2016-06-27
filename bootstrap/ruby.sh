#!/usr/bin/env bash

echo "Installing rvm + ruby..."

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable --ignore-dotfiles

echo "Done installing rvm"
