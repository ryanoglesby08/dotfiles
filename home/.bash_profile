if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

for DOTFILE in ~/.files/system/.{functions,aliases,exports,path,prompt}; do
  [ -f "$DOTFILE" ] && source "$DOTFILE"
done

# This should come after my local PATH edits
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/ryanoglesby/.gvm/bin/gvm-init.sh" ]] && source "/Users/ryanoglesby/.gvm/bin/gvm-init.sh"
