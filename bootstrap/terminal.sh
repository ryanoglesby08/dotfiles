#!/usr/bin/env zsh

echo "Linking home directory dotfiles..."

ln -sfv $HOME/.files/home/.zshrc $HOME
ln -sfv $HOME/.files/home/.inputrc $HOME
ln -sfv $HOME/.files/home/.vimrc $HOME

# https://www.reddit.com/r/apple/comments/5t20tk/lpt_add_a_hushlogin_file_to_your_home_directory/
ln -sfv $HOME/.files/home/.hushlogin $HOME

mkdir -p $HOME/.ssh && ln -sfv $HOME/.files/home/ssh/config $HOME/.ssh

ln -sfv $HOME/.files/home/git/.gitconfig $HOME
ln -sfv $HOME/.files/home/git/.gitignore_global $HOME

echo "Done linking home directory dotfiles."
