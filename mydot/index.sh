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

# CONTROLLER LIBRARY
export CONTROLLER="$DOTS/mydot/controller"

# Path to dotfiles library directory
export LIB="$HOME/.Dotfiles/lib"

# Path to my custom dotfiles library source code
export ISRC="$LIB/src"

# Path to log files directory
export CACHE="$CONTROLLER/.cache"

#===================================================================================
# LIBRARY CONTROLLER
export CORE="$CONTROLLER/core.sh"
#===================================================================================

#===================================================================================
# Requirement
#===================================================================================
export KEY="$LIB/var/key"

#===================================================================================
# LOG files
#===================================================================================
# Append a timestamp and always write a new file
# Same log, growing and appending - make sure its a one time deal or that you have a log rotating utility running.
LOGFILE="$CACHE/log/$(date +%Y%h%d_%H.%M).log"
ERRLOG="$CACHE/err/error.$(date +%Y%h%d_%H.%M).log"
export LOGFILE
export ERRLOG
#===================================================================================

# PATH TO LOGGER 
export LOGGER_PATH="$CONTROLLER/logger"