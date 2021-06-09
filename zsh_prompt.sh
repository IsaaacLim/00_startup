#!/bin/sh

echo "#Command Prompt Styling
TERM=xterm-256color
PROMPT='%U%F{217}isaac%f%F{139}(%m)%f%u %U%F{152}%1~%f%u %F{252}➜%f '" > ~/.zshrc

# From
#https://blog.devgenius.io/customize-the-macos-terminal-zsh-4cb387e4f447

# Another good resource
#https://scriptingosx.com/2019/07/moving-to-zsh-06-customizing-the-zsh-prompt/

# TERMINAL COLOR
#Background: #181818
#Foreground: #DFC9C5


#TERM setting doesn't work for Gruvbox

# DEFAULT SETTING
# TERM=Linux
# PROMPT=%n@%m %1~ %# 
