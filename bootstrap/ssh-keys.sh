#!/usr/bin/env bash

echo "Generating ssh keys..."

# Follows Github's steps: https://help.github.com/enterprise/2.12/user/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/

generate_key() {
  mkdir -p $HOME/.ssh
  ssh-keygen -t rsa -b 4096 -C "ryan.oglesby08@gmail.com"

  echo "Adding key to the ssh-agent to store the passphrase..."
  eval "$(ssh-agent -s)"
  ssh-add -K $HOME/.ssh/id_rsa

  pbcopy < $HOME/.ssh/id_rsa.pub
  echo "The contents of id_rsa.pub have been copied to the clipboard."
  echo "--> Add the key to your Github account before continuing."
  echo "--> Instructions can be found here: https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/"
  read -p "Press <enter> to continue... " -r

  echo "done!"
}

# Check for existing id_rsa key
if [[ $(ls $HOME/.ssh | grep ^id_rsa$) ]]; then
  read -p "Found an id_rsa key in ~/.ssh. Do you want to generate one anyway? (y/n) " -r
  if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    exit 0
  fi

  generate_key
else
  read -p "No existing ssh key found. Do you want to generate one? (y/n) " -r
  if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    exit 0
  fi

  generate_key
fi

echo "Done generating ssh keys."
