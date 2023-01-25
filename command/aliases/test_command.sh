#!/usr/bin/env bash

#===================================================================================
# Check this command is valid or not.
#===================================================================================
function check_plugins () {
    
    missing_plugins=()
    i=0

    while read -r line
    do
    if ! [ -x "$(command -v "$line")" ]; then


        missing_plugins[i]=${line}
        # find the plugins that not exists
        (( i++ )) || true
    
    fi

    # PATH to find the plugins list
    # PATH must be absolute path
    done < "$HOME/.Dotfiles/command/aliases/require/PLUGINSLIST.txt"

    # Plugins are missing
    if [[ ${#missing_plugins[@]} -gt 0 ]] 
    then
        echo "Error: these pluins are not installed. : ${missing_plugins[*]}"
        echo "Please run this run below command to install"
        echo "brew install ${missing_plugins[*]}"
        exit 0
    fi

    # All plugins are installed
    echo "PASS!! All plugins are available in the plugins list"
    return 1
}

function list_files() {
    missing_files=()
    i=0

    while read -r line
    do
        # If files are missing
        if [[ ! -f $line ]]; then
            
            missing_files[i]=${line}
            (( i++ )) || true

        fi

    # PATH to find the file list
    # PATH must be absolute path
    done < "$HOME/.Dotfiles/command/aliases/require/LISTFILES.txt"

    # If something is missing
    if [[ ${#missing_files[@]} -gt 0 ]]; then
        echo "These files are MISSING! :"
        echo " ${missing_files[*]}"
        echo "Please add them to the PATH or check folder .Dotfiles/command/aliases"
        echo "or find aliases/require/LISTFILES.txt in the PATH to check the file mannually."

        exit 0
               
    fi


    # All files are available
    echo "PASS!! All files are available now"
    return 1

}


export -f check_plugins
export -f list_files