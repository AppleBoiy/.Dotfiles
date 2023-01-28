#!/usr/bin/env bash
# shellcheck source=/dev/null

#================================================================================================
#   KEEP THESE LINE TOP OF FILE
#================================================================================================
MYDOT="$HOME/.Dotfiles/mydot"
export MYDOT
# Export PATH variables
source "$MYDOT/index.sh"
wait $!

# Active myLib
source "$CONTROLLER/core.sh"
wait $!
#================================================================================================


#================================================================================================
#----------------------------|| MAIN FUNCTION START EXECUTING HERE ||----------------------------
#================================================================================================


function main() {

    source "$LIB/init.sh"

}

write_task main
wait $!

#================================================================================================
#   KEEP THESE LINE BOTTOM OF FILE
source "$MYDOT/destructor.sh" 
#================================================================================================