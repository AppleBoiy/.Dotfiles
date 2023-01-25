#!/usr/bin/env bash

#===================================================================================
# Aliases
#===================================================================================

source aliases/test_command.sh
check_plugins
s=$?
if [ $s -eq 1 ]
then
    echo 'all plugins are available now'
else

    echo 'some plugins are not available or missing plese following guidelines'
fi

list_files
s=$?
if [ $s -eq 1 ]
then
    echo "file is already there"
else
    echo "file is not there"
fi