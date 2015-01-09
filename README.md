#Installation:

### Install dependancies
Powerline
```
pip install --user git+git://github.com/Lokaltog/powerline
```

Fish shell
```
sudo apt-add-repository ppa:fish-shell/release-2
sudo apt-get update
sudo apt-get install fish
```

oh-my-fish
```
curl -L https://github.com/bpinto/oh-my-fish/raw/master/tools/install.fish | fish
```

### Clone dotfile project
```sh
git clone https://github.com/netoxico/dotfiles.git ~/.dotfiles
```

### Update vim plugins installed as git submodules
```sh
cd .dotfiles
git submodule update --init
```

### Execute install script
```sh
./install.sh
```

### TODO
* Probably move some things to https://github.com/netoxico/chef-recipes
