
# This command tells termical to add color
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# Prompt definitions
if [ -f ~/.dotfiles/.bash_prompt ]; then
  source ~/.dotfiles/.bash_prompt
fi

# Assigned because of `brew doctor`
export PATH=/usr/local/bin:$PATH

##
# Alias definitions
##

# General shortcuts
alias lsa='clear && ls -al'

# Enova-specific definitions
if [ -f ~/.dotfiles/.enovarc ]; then
  source ~/.dotfiles/.enovarc
fi

