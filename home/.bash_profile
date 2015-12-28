
for DOTFILE in ~/.files/system/.functions; do
  [ -f "$DOTFILE" ] && source "$DOTFILE"
done

for DOTFILE in ~/.files/system/.{aliases,exports,path,prompt}; do
  [ -f "$DOTFILE" ] && source "$DOTFILE"
done

for DOTFILE in ~/.files/tools/.{rvm,brew}; do
  [ -f "$DOTFILE" ] && source "$DOTFILE"
done


#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/ryanoglesby/.gvm/bin/gvm-init.sh" ]] && source "/Users/ryanoglesby/.gvm/bin/gvm-init.sh"
