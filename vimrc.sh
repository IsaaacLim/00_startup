#!/bin/sh
mkdir -p ~/.vim/colors
cp -u -p ./colorschemes/gruvbox.vim ~/.vim/colors
cp -u -p ./colorschemes/jellybeans.vim ~/.vim/colors
cp -u -p ./colorschemes/molokai.vim ~/.vim/colors
cp -u -p ./colorschemes/zenburn.vim ~/.vim/colors

#export TERM=xterm-256color
#set t_Co=256 			#zenburn
#let g:rehash256 		#molokai

# Comfirmation prompt
read -p "Override existing ~/.vimrc file? [y/n] " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
	echo "set number" > ~/.vimrc
	echo "syntax on" >> ~/.vimrc
	echo "set ruler" >> ~/.vimrc

	echo "set t_Co=256" >> ~/.vimrc
	echo "let g:rehash256 = 1" >> ~/.vimrc

	#TERM setting from .zshrc messes up Gruvbox
	#But setting colors to jellybeans first before gruvbox works
	# echo "colors molokai" >> ~/.vimrc
	echo "colors jellybeans" >> ~/.vimrc
	echo "colors gruvbox" >> ~/.vimrc

	echo "	~/.vimrc has been overwritten"
else
	echo "	~/.vimrc wasn't modified"
fi
