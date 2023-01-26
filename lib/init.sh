#!/usr/bin/env bash

#===================================================================================
#===================================================================================
# Keep at the top of this file.
# shellcheck source=/dev/null
source "$HOME/.Dotfiles/lib/PATH.sh"
echo ".DOTFILES is running now~"
#===================================================================================
#===================================================================================


#===================================================================================
# Command
#===================================================================================

# Link to core command
if [ -f "$ISRC/core.sh" ]
then
    echo "CORE is found in $ISRC"
    # shellcheck source=/dev/null
    source "$ISRC/core.sh"
else 
    echo "CORE is not found in $ISRC/core.sh"
fi

