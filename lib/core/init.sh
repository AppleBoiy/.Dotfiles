#!/usr/bin/env bash

#===================================================================================
# Keep at the top of this file.
# shellcheck source=/dev/null
echo "SOURCE is running now~"
#===================================================================================


#===================================================================================
# PATH variable
#===================================================================================

# EXPORT PATH SHORTCUTS
source "$HOME/.Dotfiles/lib/src/path/PATH.sh"

# EXPORT SHOW AVALIABLES PATH SHORTCUTS FUNCTION
source "$ISRC/path/show_path.sh"


#===================================================================================
## CHECKING REQUIREMENTS
source "$ISRC/check/plugins.sh"
check_plugins

#===================================================================================
# ALIAS variable
#===================================================================================

# ALIAS COMMAND
source "$ISRC/alias/init.sh"
