#!/usr/bin/env bash

# git
alias gs="git status"

# map exa commands to normal ls commands
alias ll="exa -l -g --icons --header"
alias ls="exa --icons"
alias lt="exa --tree --icons -a -I '.git|__pycache__|.mypy_cache|.ipynb_checkpoints|.DS_Store|.log'"
alias la="exa --icons -halT --ignore-glob='*.DS_Store*|*.log'"
# starship prompt
alias gt="starship toggle gcloud disabled" # toggle gcloud info on the prompt

