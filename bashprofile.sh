#!/bin/sh

# Aliases and command prompt settings for BASH (WSL linux)

# Run scripts in /bash_scripts
bash bash_scripts/bash_aliases.sh	# setup aliases
bash bash_scripts/bash_prompt.sh	# setup bash command prompt

# bash_profile will run by default when system starts
# bash_profile contains info from .bash_aliases and .bash_prompt
# Settings are separated into different files for maintainability
echo "#!/usr/bin/env bash" > ~/.bash_profile
echo "source ~/.bash_aliases" >> ~/.bash_profile
echo "source ~/.bash_prompt" >> ~/.bash_profile

chmod 744 ~/.bash_aliases
chmod 744 ~/.bash_prompt
chmod 744 ~/.bash_profile
. ~/.bash_profile					# Manual run .bash_profile

echo "~/.bash_profile has been updated"
