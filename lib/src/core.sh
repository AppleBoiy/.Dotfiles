#!/usr/bin/env bash

echo "CORE COMMAND IS CALLED"

#===================================================================================
# Functions call
#===================================================================================

# shellcheck source=/dev/null
source "$ISRC/test_command.sh"


#===================================================================================
# Aliases
#===================================================================================

check_plugins
PLUGINS=$?
if [ $PLUGINS -eq 1 ]
then
    echo 'all plugins are available now'
else

    echo 'some plugins are not available or missing plese following guidelines'
fi

list_files
FILES=$?
echo $FILES
if [ $FILES -eq 1 ]
then
    echo "file is already there"
else
    echo "file is not there"
fi

if [ $PLUGINS -eq 1 ] && [ $FILES -eq 1 ]
then
    # shellcheck source=/dev/null
    source "$ISRC/aliases/list.sh"
fi