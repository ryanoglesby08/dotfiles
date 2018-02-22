#####################
# Aliases
#####################

alias ls="ls -G"

alias home="cd ~"
alias proj="cd ~/projects"

#####################
# Completion
#####################

[ -f $(brew --prefix)/etc/bash_completion.d/brew_bash_completion.sh ] && source $(brew --prefix)/etc/bash_completion.d/brew_bash_completion.sh

[ -f $(brew --prefix git)/etc/bash_completion.d/git-completion.bash ] && source $(brew --prefix git)/etc/bash_completion.d/git-completion.bash
[ -f $(brew --prefix git)/etc/bash_completion.d/git-prompt.sh ] && source $(brew --prefix git)/etc/bash_completion.d/git-prompt.sh


#####################
# Settings
#####################

# Colorize ls
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced


#####################
# Path
#####################

prepend-path() {
  [ -d "$1" ] && PATH="$1:$PATH"
}

prepend-path "/sbin"
prepend-path "/usr/sbin"
prepend-path "/usr/local/sbin"
prepend-path "/bin"
prepend-path "/usr/bin"
prepend-path "/usr/local/bin"

# Remove duplicates (preserving prepended items)
# Source: http://unix.stackexchange.com/a/40755
PATH=`echo -n $PATH | awk -v RS=: '{ if (!arr[$0]++) {printf("%s%s",!ln++?"":":",$0)}}'`

export PATH


#####################
# Prompt
#####################

color_off="\[\033[0m\]"  # Text Reset
green="\[\033[0;32m\]"   # Green

export GIT_PS1_SHOWDIRTYSTATE=1

export PS1='[\u@\h] \W '$green'$(__git_ps1 "(%s)")'$color_off'\$ '


#####################
# Add ons
#####################

# Load additional sources based on naming convention of .bashrc-<xxx>
for DOTFILE in ~/.bashrc-*; do
  [ -f "$DOTFILE" ] && source "$DOTFILE"
done
