.dotfiles
=========
My dotfiles

Installation
===========
Simply clone this repo into your root directory and follow the instructions below for each of the respective features.

Brew
====
*Install*
`ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

*Libraries*
Libraries in the approximate order that they are needed... hopefully

- git
- bash-completion
 
- gcc48
- gcc49
- apple-gcc42
 
- chruby
- ruby-install
- node
 
- vim
- wget
- ack
- watchman

Terminal Configuration
======================
If running this on a Mac, the easiest way to set-up the terminal invironment is to symlink the `.bash_profile` file.  
`ln -s ~/.dotfiles/.bash_profile ~/.bash_profile`

The `.bash_profile` and `.bashrc` files are set to source certain files depending on environment. This makes loading the environment a bit more modular.

Terminal Theme
=========================

- Peppermint
I originally found the theme [ here ]( http://noahfrederick.com/blog/2011/lion-terminal-theme-peppermint/ 'Pepperming theme' ).  
You will need to import it through the Terminal Preferences interface.

- Solarized
Download and instructions on the [ official website]( http://ethanschoonover.com/solarized )

Vim configuration
=================
I have set most of this up already through the use of Vundle.  
To install all dependencies to run Vim, follow the following easy commands:

1.   `ln -s ~/.dotfiles/.vimrc ~/.vimrc`
2.   `git clone https://github.com/gmarik/Vundle.vim ~/.vim/bundle/vundle`
3.   `vim +BundleInstall +qall`

Git configuration
=================
The setting of global Git variables and aliases specific to Git. Like the other features, just symlink the file:  
`ln -s ~/.dotfiles/.gitconfig ~/.gitconfig`

