#!/usr/bin/env bash

mkdir -p $HOME/.files
git clone https://github.com/ryanoglesby08/dotfiles.git $HOME/.files

$HOME/.files/bootstrap/terminal.sh

$HOME/.files/bootstrap/directories.sh

$HOME/.files/bootstrap/ssh-keys.sh
$HOME/.files/bootstrap/brew.sh
$HOME/.files/bootstrap/brew-cask.sh
