#!/bin/sh

# Comfirmation prompt
read -p "Override existing ~/.bash_aliases file? [y/n] " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
	# Export these aliases to ~/.bash_aliases
	echo '#From 00_startup/bash_scripts/bash_aliases

alias setup=". ~/.bash_profile"			#for WSL users punya VSCode
alias gccf="gcc -Wall -Wextra -Werror"
alias gccw="gcc -Wall -Wextra -Werror *.c && ./a.out"
alias gcch="gcc -Wall -Wextra -Werror *.c *.h && ./a.out"
alias normch="norminette -R CheckForbiddenSourceHeader"
alias normi="~/.local/bin/norminette"
# alias normich="pythom3 -m norminette -R CheckForbiddenSourceHeader" #another method
' > ~/.bash_aliases

	echo "	~/.bash_aliases has been overwritten"
else
	echo "	~/.bash_aliases wasn't modified..."
	echo "	check aliases settings from /bash_scripts/bash_aliases.sh"
fi
