#!/bin/bash

if [[ $EUID -eq 0 ]]; then
    echo "This script must be run as normal user!"
    exit 1
fi

if [[ ! -d $HOME/.config/nvim ]]; then
    git clone --depth 1 https://github.com/LongChampion/NeoVim $HOME/.config/nvim
    curl -fLo $HOME/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    nvim +PlugInstall +qall
fi
