
## This file is set specificall for my local computer
## It is suggested to source the various scripts for your environment
export EDITOR='vim'
alias be='bundle exec'
PATH=$HOME/bin:$PATH

# This command tells terminal to add color
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# Assigned because of `brew doctor`
# export PATH=/usr/local/bin:$PATH

# Generic configurations
if [ -f $HOME/.dotfiles/.bash_generic ]; then
  source $HOME/.dotfiles/.bash_generic
fi

# Enova-specific definitions
if [ -f $HOME/.dotfiles/.enovarc ]; then
  source $HOME/.dotfiles/.enovarc
fi

# Prompt definitions
if [ -f $HOME/.dotfiles/.bash_prompt ]; then
  source $HOME/.dotfiles/.bash_prompt
fi
