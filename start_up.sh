#!/bin/sh

# Set up for Vim
ln ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.gvimrc ~/.gvimrc
ln -sf ~/dotfiles/.vim ~/.vim
mkdir ~/.vim/tmp

git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
