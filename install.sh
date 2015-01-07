#!/bin/bash

echo "[*] Installing my .dotfiles"
set -e

function ensure_link {
    if test -L "$HOME/$2"; then
        echo "[-] Symbolic link already exist: $HOME/$2"
    else
        ln -s "$HOME/$1" "$HOME/$2"
        echo "[-] Created symbolic link: $HOME/$2"
    fi

    test -L "$HOME/$2" || ln -s "$HOME/$1" "$HOME/$2"
}

test -d ~/.dotfiles || git clone https://github.com/netoxico/dotfiles.git ~/.dotfiles


ensure_link ".dotfiles/vim"                ".vim"
ensure_link ".dotfiles/vim/vimrc"          ".vimrc"
ensure_link ".dotfiles/vim/gvimrc"         ".gvimrc"
ensure_link ".dotfiles/.gitexcludes"       ".gitexcludes"
ensure_link ".dotfiles/.gitconfig"         ".gitconfig"
ensure_link ".dotfiles/tmux/tmux.conf"     ".tmux.conf"
ensure_link ".dotfiles/fish"   ".config/fish"
ensure_link ".dotfiles/sublimetext/User/"  "Library/Application Support/Sublime Text 3/Packages/User"

echo "[*] Installation completed"
