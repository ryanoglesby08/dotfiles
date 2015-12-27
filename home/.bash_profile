if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

######  PROMPT  ##########
color_off="\[\033[0m\]"       # Text Reset
green="\[\033[0;32m\]"        # Green

export GIT_PS1_SHOWDIRTYSTATE=1

export PS1='[\u@\h] \W '$green'$(__git_ps1 "(%s)")'$color_off'\$ '
######  END PROMPT  ########


for DOTFILE in ~/.files/system/.{aliases,exports}; do
  [ -f "$DOTFILE" ] && source "$DOTFILE"
done


#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/ryanoglesby/.gvm/bin/gvm-init.sh" ]] && source "/Users/ryanoglesby/.gvm/bin/gvm-init.sh"
