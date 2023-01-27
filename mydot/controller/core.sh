#!/usr/bin/env bash


#===================================================================================
# Keep at the top of this file.
# shellcheck source=/dev/null
echo "CONTROLLER is running now~"
#===================================================================================


touch "${LOGFILE}"
touch "${ERRLOG}"   

source "$LOGGER_PATH/init.sh"

