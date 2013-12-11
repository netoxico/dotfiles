#Installation:

### Clone dotfile project
```sh
git clone git@github.com:netoxico/dotfiles.git ~/.dotfiles
```

### Update vim plugins installed as git submodules
```sh
cd .dotfiles
git submodule update --init
```

### Create symlinks
```sh
ln -s ~/.dotfiles/vim ~/.vim
ln -s ~/.dotfiles/vim/vimrc ~/.vimrc
ln -s ~/.dotfiles/vim/gvimrc ~/.gvimrc
ln -s ~/.dotfiles/.gitexcludes ~/.gitexcludes
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/fish/config.fish ~/.config/fish/config.fish
```

###TODO

* shellscript for automating symlinks

