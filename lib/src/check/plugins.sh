#!/usr/bin/env bash

#===================================================================================
# Check this plugins are avaliable or not.
#===================================================================================
function check_plugins () {
    echo "Checking plugins..."
    declare -a missing_plugins

    if [[ -f "$REQUIREMENTS/PLUGINSLIST.txt" ]]; then
        echo "Plugins list is available now..."
    else
        echo "Plugins $REQUIREMENTS/PLUGINSLIST.txt is not found" >> "$ERRLOG"
    fi

    while read -r line
    do
    if ! [ -x "$(command -v "$line")" ]; then
        # fond the plugins that is not exists
        missing_plugins+=("$line")
    
    fi

    # PATH to find the plugins list
    # PATH must be absolute path
    done < "$REQUIREMENTS/PLUGINSLIST.txt"

    echo "checking complete ~"

    # Plugins are missing
    if [[ ${#missing_plugins[@]} -gt 0 ]] 
    then
        {
        echo "Error: these pluins are not installed. : ${missing_plugins[*]}"
        echo "Please run this run below command to install"
        echo "brew install ${missing_plugins[*]}"
        } >> "$ERRLOG"
        return 0
    fi

    # All plugins are installed
    echo "PASS!! All plugins are available in the plugins list"
    return 1
}

export check_plugins