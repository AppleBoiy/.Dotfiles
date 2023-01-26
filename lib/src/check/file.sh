#!/usr/bin/env bash

#===================================================================================
# Check files are avaliable or not.
#===================================================================================

function check_file() {

    file=$1

    # If something is missing
    if ! [[ -f "$file" ]]; then
        echo "This file is MISSING! :"
        echo " $file"
        echo "Please add file to the PATH"

        return 0
               
    fi


    # All files are available
    echo "PASS!! This file is available now"
    return 1

}
export check_file