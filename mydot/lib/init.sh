#!/usr/bin/env bash

#===================================================================================
#===================================================================================
# Keep at the top of this file.
# shellcheck source=/dev/null
echo "INFO: DOT IS RUNNING NOW~~"

if [ -f "${CORE}" ]
then
    echo "DEBUG: CORE is found"
    # shellcheck source=/dev/null
    source "${CORE}"
else 
    echo "FETAL: CORE is not found in path" >> "$ERRLOG"
fi
