#!/usr/bin/env bash

# git
alias gs="git status"

# map exa commands to normal ls commands
alias ll="exa -l -g --icons"
alias ls="exa --icons"
alias lt="exa --tree --icons -a -I '.git|__pycache__|.mypy_cache|.ipynb_checkpoints'"

alias ls="source ./list_optional.sh"


# starship prompt
alias gt="starship toggle gcloud disabled" # toggle gcloud info on the prompt

