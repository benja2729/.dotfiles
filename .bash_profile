
# Fix for CISCO VPN
# https://git.cashnetusa.com/neteng/anyconnect_scripts/tree/master/osx
export FIX_VPN_POW=yes
export FIX_VPN_MINIRAISER=yes
export DOTFILES=$HOME/.dotfiles

# Only really useful for Mac implimentation
if [ -f $HOME/.bashrc ]; then
  source $HOME/.bashrc
fi
source $DOTFILES/.bashrc
