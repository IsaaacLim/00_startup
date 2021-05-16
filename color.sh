#!/bin/sh
mkdir -p ~/.vim/colors
cp ~/00_startup/zenburn.vim ~/.vim/colors
cp ~/00_startup/gruvbox.vim ~/.vim/colors
cp ~/00_startup/molokai.vim ~/.vim/colors

#export TERM=xterm-256color
#t_Co=256 zenburn
#g:rehash256 molokai

echo "set number" > ~/.vimrc
echo "syntax on" >> ~/.vimrc
echo "set ruler" >> ~/.vimrc

echo "set t_Co=256" >> ~/.vimrc
echo "let g:rehash256 = 1" >> ~/.vimrc

echo "colors molokai" >> ~/.vimrc
