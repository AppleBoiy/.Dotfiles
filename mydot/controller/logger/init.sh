#!/usr/bin/env bash


#===================================================================================
# Keep at the top of this file.
# shellcheck source=/dev/null
echo "LOGGER is running now~"
#===================================================================================

touch "${LOGFILE}"
touch "${ERRLOG}"   

source "$LOGGER_PATH/src/function/export.sh"