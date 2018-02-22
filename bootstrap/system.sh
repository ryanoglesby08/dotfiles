#!/usr/bin/env bash

echo "Updating Mac OS..."
sudo softwareupdate -i -a

echo "Installing XCode command line tools"
xcode-select --install
