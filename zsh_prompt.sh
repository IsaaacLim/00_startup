#!/bin/sh

echo "#Command Prompt Styling
TERM=xterm-256color
PROMPT='%F{217}%isaac%f %F{139}(%m)%f %F{152}%1~%f %F{252}➜%f '" > ~/.zshrc

#Background: #181818
#Foreground: #DFC9C5
#https://blog.devgenius.io/customize-the-macos-terminal-zsh-4cb387e4f447

#TERM setting doesn't work for Gruvbox

# Default setting
# TERM=Linux
# PROMPT=%n@%m %1~ %# 
