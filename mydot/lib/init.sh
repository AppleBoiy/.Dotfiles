#!/usr/bin/env bash

#===================================================================================
#===================================================================================
# Keep at the top of this file.
# shellcheck source=/dev/null
log_writter "-i"  "DOT LIBRARY IS RUNNING NOW~~" "lib"

if [ -f "${CORE}" ]
then
    log_writter "-d" "CORE is found" "lib"
    # shellcheck source=/dev/null
    source "${CORE}"
else 
    log_writter "-f" "CORE is not found in path" "lib"
    log_writter "-f" "CORE is not found in path" "lib" >> "$ERRLOG"
fi
