if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

for DOTFILE in ~/.files/system/.{aliases,exports,prompt}; do
  [ -f "$DOTFILE" ] && source "$DOTFILE"
done

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/ryanoglesby/.gvm/bin/gvm-init.sh" ]] && source "/Users/ryanoglesby/.gvm/bin/gvm-init.sh"
