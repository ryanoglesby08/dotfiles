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

# see: https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
[ -f /usr/local/opt/git/etc/bash_completion.d/git-prompt.sh ] && source /usr/local/opt/git/etc/bash_completion.d/git-prompt.sh

export GIT_PS1_SHOWDIRTYSTATE=1

setopt PROMPT_SUBST
export PROMPT='[%~] %F{green}$(__git_ps1 " (%s)")%f %# '

#####################
# Add ons
#####################

# Load additional sources based on naming convention of .zshrc-<xxx>
for DOTFILE in ~/.zshrc-*(.N); do
  [ -f "$DOTFILE" ] && source "$DOTFILE"
done
