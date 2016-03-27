for DOTFILE in ~/.files/system/.functions; do
  [ -f "$DOTFILE" ] && source "$DOTFILE"
done

for DOTFILE in ~/.files/system/.{aliases,completion,exports,path,prompt}; do
  [ -f "$DOTFILE" ] && source "$DOTFILE"
done

for DOTFILE in ~/.files/tools/.rvm; do
  [ -f "$DOTFILE" ] && source "$DOTFILE"
done
