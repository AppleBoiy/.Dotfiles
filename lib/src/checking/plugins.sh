#!/usr/bin/env bash

#===================================================================================
# Check this plugins are avaliable or not.
#===================================================================================
function check_plugins () {
    echo "Checking plugins..."
    missing_plugins=()
    
    check_file "$ISRC/require/PLUGINSLIST.txt"

    local i=0

    while read -r line
    do
    if ! [ -x "$(command -v "$line")" ]; then


        missing_plugins[i]=${line}
        # find the plugins that not exists
        (( i++ )) || true
    
    fi

    # PATH to find the plugins list
    # PATH must be absolute path
    done < "$ALIASES/require/PLUGINSLIST.txt"

    echo "checking complete ~"

    # Plugins are missing
    if [[ ${#missing_plugins[@]} -gt 0 ]] 
    then
        echo "Error: these pluins are not installed. : ${missing_plugins[*]}"
        echo "Please run this run below command to install"
        echo "brew install ${missing_plugins[*]}"
        return 0
    fi

    # All plugins are installed
    echo "PASS!! All plugins are available in the plugins list"
    return 1
}

export check_plugins