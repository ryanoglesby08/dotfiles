#!/usr/bin/env zsh

echo "Generating ssh keys..."

# Follows Github's steps: https://help.github.com/enterprise/2.12/user/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/

generate_key() {
  ssh-keygen -o -a 100 -t ed25519 -f $HOME/.ssh/id_ed25519 -C "ryan.oglesby08@gmail.com"

  echo "Adding key to the ssh-agent to store the passphrase..."
  eval "$(ssh-agent -s)"
  ssh-add -K $HOME/.ssh/id_ed25519

  pbcopy < $HOME/.ssh/id_ed25519.pub
  echo "The contents of id_ed25519.pub have been copied to the clipboard."
  echo "--> Add the key to your Github account before continuing."
  echo "--> Instructions can be found here: https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/"

  read "?Press <enter> to continue... "
  ssh -T git@github.com
}

# Ensure the .ssh directory exists before starting
mkdir -p $HOME/.ssh

# Check for existing id_ed25519 key
if [[ $(ls $HOME/.ssh | grep ^id_ed25519$) ]]; then
  read "reply?Found an id_ed25519 key in ~/.ssh. Do you want to generate one anyway? (y/n) "
  if [[ ! $reply =~ ^[Yy]$ ]]; then
    exit 0
  fi

  generate_key
else
  read "reply?No existing ssh key found. Do you want to generate one? (y/n) "
  if [[ ! $reply =~ ^[Yy]$ ]]; then
    exit 0
  fi

  generate_key
fi

echo "Done generating ssh keys."
