#!/usr/bin/env bash

mkdir -p $HOME/.files
git clone git@github.com:ryanoglesby08/dotfiles.git $HOME/.files

$HOME/.files/setup_terminal.sh

$HOME/.files/bootstrap/brew.sh
$HOME/.files/bootstrap/brew-cask.sh
