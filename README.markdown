#Installation:

###For my new os installation
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
* ln -s ~/.dotfiles/vim/gvimrc ~/.gvimrc
* ln -s ~/.dotfiles/.zshrc ~/.zshrc
* ln -s ~/.dotfiles/.gitexcludes ~/.gitexcludes
* ln -s ~/.dotfiles/.gitconfig ~/.gitconfig

###Finaly turn zsh default shell
* chsh -s /bin/zsh
* restart terminal

###TODO

* Will be better to have a script that execute all this steps.
