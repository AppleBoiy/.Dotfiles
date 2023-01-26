#!/usr/bin/env bash

#===================================================================================
# Keep at the top of this file.
# shellcheck source=/dev/null
echo "PATH is running now~"
#===================================================================================

#===================================================================================
# EXPORT PATH
#===================================================================================

# Path to dotfiles directory
export DOTS="$HOME/.Dotfiles"

# Path to dotfiles library directory
export LIBRARY_PATH="$HOME/.Dotfiles/lib"

# Path to my custom dotfiles library source code
export ISRC="$LIBRARY_PATH/src"

# Path to log files directory
export LOG="$LIBRARY_PATH/var/log"


