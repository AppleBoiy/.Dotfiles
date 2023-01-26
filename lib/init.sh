#!/usr/bin/env bash

#===================================================================================
#===================================================================================
# Keep at the top of this file.
# shellcheck source=/dev/null
echo "DOT IS RUNNING NOW~~"
LIB="$HOME/.Dotfiles/lib"
CORE="$LIB/core/core.sh"


if [ -f "$CORE" ]
then
    echo "CORE is found"
    # shellcheck source=/dev/null
    source "$CORE"
else 
    echo "CORE is not found in path: $CORE"
fi

#===================================================================================
# Append a timestamp and always write a new file
# Same log, growing and appending - make sure its a one time deal or that you have a log rotating utility running.
LOGFILE="$LIB/var/log/$(date +%Y%h%d_%H.%M).log"
ERRLOG="$LIB/var/err/error.$(date +%Y%h%d_%H.%M).log"
export LOGFILE
export ERRLOG
#===================================================================================

write_task "$LIB/core/init.sh"