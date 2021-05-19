#!/bin/sh

echo "#!/usr/bin/env bash" > ~/.bash_profile
echo "source ~/.bash_prompt" >> ~/.bash_profile #For maintainability

echo '#!/usr/bin/env bash

# TERMINAL PROMPT
PS1="\[\e[0;93m\]\u\[\e[m\]"    # username
PS1+=" "    # space
PS1+="\[\e[0;95m\](\h)\[\e[m\]"    # host
PS1+=" "    # space
PS1+="\[\e[0;92m\]\W\[\e[m\]"    # current directoy
PS1+=" "    # space
PS1+=">> "    # end prompt

export PS1;
export CLICOLOR=1 #Turns color on
export LSCOLORS=ExFxBxDxCxegedabagacad #Customizes them


#https://medium.com/@charlesdobson/how-to-customize-your-macos-terminal-7cce5823006e
' > ~/.bash_prompt 

chmod 744 ~/.bash_prompt
chmod 744 ~/.bash_profile
. ~/.bash_profile
