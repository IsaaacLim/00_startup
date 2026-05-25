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
zstyle ':vcs_info:*' enable git" >> ~/.zshrc

echo "
# (IBM Mac) For Power Platform Tools
export DOTNET_ROOT=/opt/homebrew/Cellar/dotnet/9.0.8/libexec
export DOTNET_ROOT_ARM64=/opt/homebrew/Cellar/dotnet/9.0.8/libexec

# (IBM Mac) Load SSH agents automatically
eval "$(ssh-agent -s)"
ssh-add --apple-use-keychain ~/.ssh/id_ed25519
ssh-add --apple-use-keychain ~/.ssh/id_ed25519_github_ibm

# (IBM MAC) Load Claude path automatically
export PATH='$HOME/.local/bin:$PATH'

# (IBM MAC) Start ICA proxy for Claude
alias claude_ica_proxy='cd ~/Developer/ica_proxy && ./.venv/bin/python3 main_claude_code.py'
alias claude_ica_start='export ANTHROPIC_BASE_URL=http://localhost:8001 && export ANTHROPIC_AUTH_TOKEN=sk-dummy-for-proxy && claude'" >> ~/.zshrc

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
