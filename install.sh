#!/bin/bash

if [[ $EUID -eq 0 ]]; then
    echo "This script must be run as normal user!"
    exit 1
fi

YAY="yay -S --noconfirm --needed"
DEPENDANCY="neovim git nodejs npm clang fzf ttf-font-awesome awesome-terminal-fonts nerd-fonts-fira-code"

$YAY $DEPENDANCY

if [[ ! -d $HOME/.config/nvim ]]; then
    git clone --depth 1 https://github.com/LongChampion/NeoVim $HOME/.config/nvim
    curl -fLo $HOME/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    nvim +PlugInstall +qa
    
    # Complete coc.nvim setup
    sudo npm install -g yarn
    cd $HOME/.config/nvim/plugged/coc.nvim
    yarn install
else
    echo "$HOME/.config/nvim already exists!"
    echo "Backup it then rerun this script!"
fi