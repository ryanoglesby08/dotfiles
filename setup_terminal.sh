#!/usr/bin/env bash

echo "Linking home directory dotfiles..."

ln -sfv $HOME/.files/home/.bash_profile $HOME
ln -sfv $HOME/.files/home/.inputrc $HOME
ln -sfv $HOME/.files/home/.vimrc $HOME

mkdir -p $HOME/.ssh && ln -sfv $HOME/.files/tools/ssh/config $HOME/.ssh

ln -sfv $HOME/.files/tools/git/.gitconfig $HOME
ln -sfv $HOME/.files/tools/git/.gitignore_global $HOME
