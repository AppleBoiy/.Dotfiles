#!/usr/bin/env bash

#===================================================================================
# Keep at the top of this file.
# shellcheck source=/dev/null
echo "CORE is running now~"
#===================================================================================


#===================================================================================
# PATH variable
#===================================================================================

# EXPORT PATH SHORTCUTS
source "$HOME/.Dotfiles/lib/src/path/PATH.sh"

# EXPORT SHOW AVALIABLES PATH SHORTCUTS FUNCTION
source "$ISRC/path/show_path.sh"

#===================================================================================
# ALIAS variable
#===================================================================================

# ALIAS COMMAND
source "$ISRC/alias/init.sh"
