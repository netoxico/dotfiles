#Installation:

###oh-my-zsh

git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

###dotfiles

* git clone git://github.com/netoxico/dotfiles.git ~/.dotfiles

###For vim plugins installed as git submodules

* cd .dotfiles/vim
* git submodule init
* git submodule update

###Create symlinks:

* ln -s ~/.dotfiles/vim ~/.vim
* ln -s ~/.dotfiles/vim/vimrc ~/.vimrc
* ln -s ~/.dotfiles/.zshrc ~/.zshrc
