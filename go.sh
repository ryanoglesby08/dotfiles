#!/usr/bin/env zsh

set -e

print_usage() {
  cat <<-EOF
  Usage: go.sh [options...] <command>
  Commands:
    bootstrap   Set up a new computer
    update      Update a computer
  Options:
    -h, --help  This help text
EOF
}

run_bootstrap() {
  mkdir -p $HOME/.files
  git clone https://github.com/ryanoglesby08/dotfiles.git $HOME/.files

  $HOME/.files/bootstrap/system.sh

  $HOME/.files/bootstrap/ssh-keys.sh
  $HOME/.files/bootstrap/brew.sh
  $HOME/.files/bootstrap/brew-cask.sh

  $HOME/.files/bootstrap/directories.sh

  $HOME/.files/bootstrap/terminal.sh
}

run_update() {
  # Assuming the dotfiles have alrady been cloned
  # mkdir -p $HOME/.files
  # git clone https://github.com/ryanoglesby08/dotfiles.git $HOME/.files

  $HOME/.files/bootstrap/system.sh

  # No need to try to download brew again
  # $HOME/.files/bootstrap/ssh-keys.sh
  # $HOME/.files/bootstrap/brew.sh
  # $HOME/.files/bootstrap/brew-cask.sh
  $HOME/.files/update/brew.sh

  $HOME/.files/bootstrap/directories.sh

  $HOME/.files/bootstrap/terminal.sh
}


PARAM=$1
case $PARAM in
  -h | --help)
    print_usage
    exit
    ;;
  bootstrap)
    run_bootstrap
    exit
    ;;
  update)
    run_update
    exit
    ;;
  *)
    print_usage
    exit 1
    ;;
esac
