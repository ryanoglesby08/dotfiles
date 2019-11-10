#!/usr/bin/env zsh

echo "Installing node, npm, and yarn..."

brew install node yarn

echo "Configuring npm init options"
npm set init.author.email "ryan.oglesby08@gmail.com"
npm set init.author.name "Ryan Oglesby"
npm set init.license "MIT"

echo "Done installing node."
