
# Fix for CISCO VPN
# https://git.cashnetusa.com/neteng/anyconnect_scripts/tree/master/osx
export FIX_VPN_POW=yes
export FIX_VPN_MINIRAISER=yes

# Only really useful for Mac implimentation
if [ -f ~/.bashrc ]; then
  source ~/.bashrc
else
  source ~/.dotfiles/.bashrc
fi


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
