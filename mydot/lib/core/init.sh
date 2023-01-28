#!/usr/bin/env bash

#===================================================================================
# Keep at the top of this file.
# shellcheck source=/dev/null
log_writter "-i" "CORE LIBRARY IS RUNNING.."  "CORE"
#===================================================================================


#===================================================================================
# PATH variable
#===================================================================================

# EXPORT SHOW AVALIABLES PATH SHORTCUTS FUNCTION
source "$ISRC/function/show_path.sh"


#===================================================================================
## CHECKING REQUIREMENTS
source "$ISRC/function/plugins.sh"
check_plugins

#===================================================================================
# ALIAS variable
#===================================================================================

# ALIAS COMMAND
source "$ISRC/command/init.sh"


log_writter "-i" "CORE IS RUN COMPLETED.." "CORE"