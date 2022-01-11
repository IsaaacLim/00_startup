#!/bin/sh
mkdir -p ~/.vim/colors
cp -u -p ./colorscheme/zenburn.vim ~/.vim/colors
cp -u -p ./colorscheme/gruvbox.vim ~/.vim/colors
cp -u -p ./colorscheme/molokai.vim ~/.vim/colors

#export TERM=xterm-256color
# t_Co=256 #zenburn
#g:rehash256 #molokai

# ---!!!--- WILL OVERRIDE PRE-EXISTING .vimrc SETTINGS ---!!!---
echo "set number" > ~/.vimrc
echo "syntax on" >> ~/.vimrc
echo "set ruler" >> ~/.vimrc

echo "set t_Co=256" >> ~/.vimrc
echo "let g:rehash256 = 1" >> ~/.vimrc

#TERM setting from .zshrc messes up Gruvbox
#But setting colors to jellybeans first before gruvbox works
#echo "colors molokai" >> ~/.vimrc
echo "colors jellybeans" >> ~/.vimrc
echo "colors gruvbox" >> ~/.vimrc
