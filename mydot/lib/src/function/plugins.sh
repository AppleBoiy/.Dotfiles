#!/usr/bin/env bash

#===================================================================================
# Check this plugins are avaliable or not.
#===================================================================================
function check_plugins () {
    echo "DEBUG: Checking plugins... at: $PWD"

    declare -a missing_plugins

    if [[ -f "$KEY/PLUGINS.txt" ]]; then
        echo "DEBUG: Plugins list is available now..."
    else
        echo "WARN: Plugins $KEY/PLUGINS.txt is not found" >> "$ERRLOG"
    fi

    while read -r line
    do
    if ! [ -x "$(command -v "$line")" ]; then
        # fond the plugins that is not exists
        missing_plugins+=("$line")
    
    fi

    # PATH to find the plugins list
    # PATH must be absolute path
    done < "$KEY/PLUGINS.txt"

    echo "DEBUG: checking complete ~"

    # Plugins are missing
    if [[ ${#missing_plugins[@]} -gt 0 ]] 
    then
        {
        echo "ERROR: these pluins are not installed. : ${missing_plugins[*]}"
        echo "Please run this run below command to install"
        echo "brew install ${missing_plugins[*]}"
        } >> "$ERRLOG"
        return 0
    fi

    # All plugins are installed
    echo "INFO: PASS!! All plugins are available in the plugins list"
    return 1
}

export check_plugins