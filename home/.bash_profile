for DOTFILE in ~/.files/system/.functions; do
  [ -f "$DOTFILE" ] && source "$DOTFILE"
done

for DOTFILE in ~/.files/system/.{aliases,completion,exports,path,prompt}; do
  [ -f "$DOTFILE" ] && source "$DOTFILE"
done

for DOTFILE in ~/.bashrc-*; do
  [ -f "$DOTFILE" ] && source "$DOTFILE"
done
