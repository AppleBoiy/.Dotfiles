#!/usr/bin/env bash

#===================================================================================
#===================================================================================
# Keep at the top of this file.
# shellcheck source=/dev/null
echo "DOT IS RUNNING NOW~~"
source "${CORE}"

if [ -f "$LIB/core/init.sh" ]
then
    echo "DEBUG: CORE is found"
    # shellcheck source=/dev/null
    source "$LIB/core/init.sh"
else 
    echo "FETAL: CORE is not found in path" >> "$ERRLOG"
fi

#

write_task "$LIB/core/init.sh"