#!/bin/sh

# Command prompt setting for ZSH (42 iMacs)
echo "#Command Prompt Styling
TERM=xterm-256color
PROMPT='%B%F{217}isaac%f%b%F{139}(%m)%f %F{152}%1~%f %F{252}%(?:%{➜%G%}:%{✘%G%})%f '" > ~/.zshrc

echo "
#Git Branch to Right of Command Prompt
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\\\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{240}(%b)branch%f'
zstyle ':vcs_info:*' enable git " >> ~/.zshrc

# From
#https://blog.devgenius.io/customize-the-macos-terminal-zsh-4cb387e4f447
## go through 'zsh prompt documentation' to understand the flags meaning

# Another good resource for additional formatting
#https://scriptingosx.com/2019/07/moving-to-zsh-06-customizing-the-zsh-prompt/

# TERMINAL COLOR
#Background: #181818
#Foreground: #DFC9C5 or #CCC5C4 (duller)


#TERM setting doesn't work for Gruvbox

# DEFAULT SETTING
# TERM=Linux
# PROMPT=%n@%m %1~ %# 
