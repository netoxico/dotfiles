export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="robbyrussell"
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
#export CASE_SENSITIVE="true"
#export DISABLE_AUTO_UPDATE="true"
#export DISABLE_LS_COLORS="true"
plugins=(git svn command-coloring pip fabric vagrant)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
alias mvim='/Applications/MacVim.app/Contents/MacOS/Vim -g'
# Quick look a file (^C to close)
alias ql='qlmanage -p 2>/dev/null'

#export NODE_PATH=/usr/local/lib/node_modules
#export DYLD_LIBRARY_PATH=/usr/local/mysql/lib/
#export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin
#export PATH=/usr/local/mysql/bin:$PATH

# Android SDK
#export PATH=${PATH}:/Users/ernesto/android-sdk-mac_x86/tools:/Users/ernesto/android-sdk-mac_x86/platform-tools

#export PATH=${PATH}:/Users/ernesto/libs/rhodes/bin
#export RHO_HOME=/Users/ernesto/libs/rhodes

#play
#export PATH=$PATH:$HOME/lib/java/play-2.0
export PATH=$PATH:$HOME/lib/java/play-1.2.4

#virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

export PATH=$PATH:/usr/local/mysql/bin

export SVN_EDITOR=vim
