#!/usr/bin/env bash

#===================================================================================
# Check this command is valid or not.
#===================================================================================
function valid_command () {
    

    while read -r line
    do
    if ! [ -x "$(command -v "$line")" ]; then
        echo Error: "$line" is not installed.
        echo Please run this run below command to install
        echo brew install "$line"

        # find the command that not exists
        exit 1
    
    fi
    done < $HOME/.Dotfiles/command/aliases/require/COMMANDLIST.txt

    # All commands are valid
    echo "PASS!! All commands are available in the command list"
    return 0
}

export -f valid_command
  
