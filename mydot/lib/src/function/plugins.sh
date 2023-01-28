#!/usr/bin/env bash

#===================================================================================
# Check this plugins are avaliable or not.
#===================================================================================
function check_plugins () {

    log_writter "-d" "Checking plugins..." "plugins"

    declare -a missing_plugins

    if [[ -f "$KEYS/PLUGINS.txt" ]]; then
        log_writter "-d" "plugins list is available now..." "plugins"
    else
        log_writter "-w" "PLUGINS.txt is not found" "plugins"
        echo "WARN: Plugins $KEYS/PLUGINS.txt is not found " >> "$ERRLOG"
    fi

    while read -r line
    do
    if ! [ -x "$(command -v "$line")" ]; then
        # fond the plugins that is not exists
        missing_plugins+=("$line")
    
    fi

    # PATH to find the plugins list
    # PATH must be absolute path
    done < "$KEYS/PLUGINS.txt"

    log_writter "-d" "checking plugins completed~" "plugins" 
    echo "DEBUG: checking complete ~"

    # Plugins are missing
    if [[ ${#missing_plugins[@]} -gt 0 ]] 
    then
        {
        log_writter "-e" "some pluins are missing" "plugins"

        echo "ERROR: these pluins are not installed. : ${missing_plugins[*]}"
        echo "Please run this run below command to install"
        echo "brew install ${missing_plugins[*]}"
        } >> "$ERRLOG"
        return 0
    fi

    # All plugins are installed
    log_writter "-i" "PASS!! All plugins are available now!"  "plugins"
    return 1
}

export check_plugins