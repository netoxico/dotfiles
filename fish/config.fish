set fish_path $HOME/.oh-my-fish
set fish_theme idan

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-fish/plugins/*)
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Example format: set fish_plugins autojump bundler

# Path to your custom folder (default path is $FISH/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load oh-my-fish cofiguration.
. $fish_path/oh-my-fish.fish

set -gx PYTHONPATH "/usr/local/lib/python2.7/site-packages:$PYTHONPATH"
set -gx C_INCLUDE_PATH "/usr/local/Cellar/libxml2/2.9.1/include/libxml2:$C_INCLUDE_PATH"
set -gx LC_ALL "en_US.UTF-8"
set -gx LANG "en_US.UTF-8"
set PATH $PATH /usr/local/sbin
set ARCHFLAGS "-arch i386 -arch x86_64"

set -gx DJANGO_COLORS "light"

alias danhos 'ssh superadmin@66.228.53.212 -p 44322'
alias linode 'ssh web@198.58.101.172'
alias raspberry 'ssh pi@192.168.15.9'

alias box_reload 'sudo /Library/StartupItems/VirtualBox/VirtualBox restart'

function emptytrash -d "Empty the OS X trash folders"
    sudo rm -rfv /Volumes/*/.Trashes
    sudo rm -rfv ~/.Trash
    sudo rm -rfv /private/var/log/asl/*.asl
end

#Vagrant
alias vu 'vagrant up'
alias vs 'vagrant suspend'
alias vh 'vagrant halt'
alias vssh 'vagrant ssh'
alias ibooks 'cd /Users/ernesto/Library/Containers/com.apple.BKAgentService/Data/Documents/iBooks/Books'

# Docker
set -gx DOCKER_HOST ""tcp://192.168.59.103:2376""
set -gx DOCKER_CERT_PATH ""/Users/ernesto/.boot2docker/certs/boot2docker-vm""
set -gx DOCKER_TLS_VERIFY 1

boot2docker shellinit | source

alias getsite 'wget --random-wait -r -p -e robots=off -U mozilla'
