#####################
# Aliases
#####################

alias ls="ls -G"

alias home="cd ~"
alias proj="cd ~/projects"


#####################
# Settings
#####################

# Colorize ls
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced


#####################
# Path
#####################

# Add things to the path like this: PATH=____:$PATH
# export PATH

#####################
# Add ons
#####################

# Load additional sources based on naming convention of .zshrc-<xxx>
# Do not store secrets or sensitive info in these as they could be checked in. Create a ~/.zshrc-local file for secrets.
for DOTFILE in ~/.zshrc-*(N); do
  [ -f "$DOTFILE" ] && source "$DOTFILE"
done

#####################
# Prompt
#####################

# see: https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
source $HOMEBREW_PREFIX/opt/git/etc/bash_completion.d/git-prompt.sh

export GIT_PS1_SHOWDIRTYSTATE=1

setopt PROMPT_SUBST
export PROMPT='[%~] %F{green}$(__git_ps1 " (%s)")%f %# '
