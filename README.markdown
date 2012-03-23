#Installation:

###If muy new os installation
* cd ~/.ssh
* ssh-keygen -t rsa -C "my@email.com"
* Upload public key to github my account

###oh-my-zsh

* git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

###dotfiles

* git clone git@github.com:netoxico/dotfiles.git ~/.dotfiles

###For vim plugins installed as git submodules

* cd .dotfiles
* git submodule update --init

###Create symlinks:

* ln -s ~/.dotfiles/vim ~/.vim
* ln -s ~/.dotfiles/vim/vimrc ~/.vimrc
* ln -s ~/.dotfiles/.zshrc ~/.zshrc
