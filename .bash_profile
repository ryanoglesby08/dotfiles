#source /Library/Developer/CommandLineTools/usr/share/git-core/git-completion.bash
#source /Library/Developer/CommandLineTools/usr/share/git-core/git-prompt.sh

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

######  PROMPT  ##########
color_off="\[\033[0m\]"       # Text Reset
green="\[\033[0;32m\]"        # Green

export GIT_PS1_SHOWDIRTYSTATE=1

export PS1='[\u@\h] \W '$green'$(__git_ps1 "(%s)")'$color_off'\$ '
######  END PROMPT  ########

# COLORIZE ls
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# SET ENV VARS
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_67.jdk/Contents/Home
export ANDROID_HOME="/usr/local/opt/android-sdk"

# SET UP MY PATH
export BREW_HOME="/usr/local/bin"
export SUBLIME="/Applications/Sublime Text.app/Contents/SharedSupport/bin"
export POSTGRES="/Applications/Postgres93.app/Contents/MacOS/bin"
export PATH=$BREW_HOME:$SUBLIME:$POSTGRES:$PATH

# This should come after my local PATH edits
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# JRuby options
export JRUBY_OPTS="-J-Xmx1g -J-Xms1g -J-XX:MaxPermSize=512M -Xcompile.invokedynamic=false"

# Docker options
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/ryanoglesby/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1


for DOTFILE in `find ~/.files/system`
do
  [ -f “$DOTFILE” ] && source “$DOTFILE”
done


#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/ryanoglesby/.gvm/bin/gvm-init.sh" ]] && source "/Users/ryanoglesby/.gvm/bin/gvm-init.sh"
