#Installation:

###Clone git

* git clone git://github.com/netoxico/dotfiles.git ~/.dotfiles

###For vim plugins installed as git submodules. Check these

* cd .dotfiles/vim
* git submodule init
* git submodule update

###Create symlinks:

* ln -s ~/.dotfiles/vim ~/.vim
* ln -s ~/.dotfiles/.vimrc ~/.vimrc
* ln -s ~/.dotfiles/.zshrc ~/.vimrc
* etc.. etc..
