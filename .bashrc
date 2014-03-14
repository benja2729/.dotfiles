
## This file is set specificall for my local computer
## It is suggested to source the various scripts for your environment

# This command tells termical to add color
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# Prompt definitions
if [ -f ~/.dotfiles/.bash_prompt ]; then
  source ~/.dotfiles/.bash_prompt
fi

# Assigned because of `brew doctor`
export PATH=/usr/local/bin:$PATH

# Generic configurations
if [ -f ~/.dotfiles/.bash_generic ]; then
  source ~/.dotfiles/.bash_generic
fi

# Enova-specific definitions
if [ -f ~/.dotfiles/.enovarc ]; then
  source ~/.dotfiles/.enovarc
fi

