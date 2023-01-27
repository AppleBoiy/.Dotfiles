#!/usr/bin/env bash

# Show available shortcuts to the path
function available_path() {

    declare -A paths

    paths["DOTS"]=$DOTS
    paths["LIBRARY_PATH"]=$LIBRARY_PATH
    paths["ISRC"]=$ISRC
    paths["LOG"]=$LOG

    for path_command in "${!paths[@]}"
    do
        echo "$path_command is direct to ${paths[path_command]}"
    done
}
export available_path