#!/bin/sh

echo "#!/usr/bin/env bash" > ~/.bash_profile
echo "source ~/.bash_prompt" >> ~/.bash_profile #For maintainability

echo '#!/usr/bin/env bash

# TERMINAL PROMPT
# Get current branch in git repo
function parse_git_branch() {
	BRANCH=`git branch 2> /dev/null | sed -e "'"/^[^*]/d"'" -e "'"s/* \(.*\)/'\1'/"'"`
	if [ ! "${BRANCH}" == "" ]
	then
		echo "${BRANCH}"
	else
		echo ""
	fi
}

# Teminal text
PS1="\[\033[01;38;5;210m\]isaac\[\033[0m\]"    # username
PS1+="\[\033[02;03;38;5;218m\](\h)\[\033[0m\]"    # host
PS1+=" "    # space
PS1+="\[\033[0;38;5;159m\]\W\[\033[0m\]"    # current directoy
PS1+=" "    # space
PS1+="\[\033[38;5;229m\]\$(parse_git_branch)\[\033[0m\]"
PS1+=" "    # space
PS1+="\[\033[01;38;5;195m\]>>\[\033[0m\] "    # end prompt

# Teminal text setting
export PS1;
export CLICOLOR=1 #Turns color on
export LSCOLORS=ExFxBxDxCxegedabagacad #Customizes them

# NOTES
# Other options: \u (username)
# From https://medium.com/@charlesdobson/how-to-customize-your-macos-terminal-7cce5823006e

# Color setting
# "\\033[48;5;__;38;5;__mTEXT\\033[0m" 
# 48;5 for background
# 38;5 for foreground
# fill 3 digit color num from reference below in __ spaces
# Add 01 before for bold
# From https://unix.stackexchange.com/questions/124407/what-color-codes-can-i-use-in-my-ps1-prompt

' > ~/.bash_prompt 

chmod 744 ~/.bash_prompt
chmod 744 ~/.bash_profile
. ~/.bash_profile
