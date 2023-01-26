#!/usr/bin/env bash

#===================================================================================
#===================================================================================
# Keep at the top of this file.
# shellcheck source=/dev/null
echo "DOT IS RUNNING NOW"

# [Un]comment the following line to control display of this script for the tty in real time.  All other commands should be passed to task.
# tail -f "${LOGFILE}" &
# logging function - called task to make main section more readable...prepend it to commands, or group commands in a function and prepend the call.
function task() {
    echo "===================================================================================================="
    echo "$(date):$(printf ' %q' "$@")"
    echo "===================================================================================================="
    start=$(date +%s)
    "$@" 2>&1
    end=$(date +%s)
    runtime=$((end-start))
    echo "Elapsed time for command was $runtime seconds."
    echo ""
} >> "${LOGFILE}"

### Main exectuion

function write_task() {
    # Append a timestamp and always write a new file
    LOGFILE=$HOME/.Dotfiles/lib/var/log/my_setup_log_file.$(date +%Y%h%d_%H.%M).log
    # Same log, growing and appending - make sure its a one time deal or that you have a log rotating utility running.

    touch "${LOGFILE}"

    task "$1"
}

function core() {

    CORE="$HOME/.Dotfiles/lib/src/core.sh"
    echo ".DOTFILES is running now~"
    if [ -f "$CORE" ]
    then
        echo "CORE is found"
        # shellcheck source=/dev/null
        source "$CORE"
    else 
        echo "CORE is not found"
    fi
}

write_task core

#===================================================================================
#===================================================================================

