#!/usr/bin/env bash

#===================================================================================
# Aliases
#===================================================================================

source aliases/test_command.sh
valid_command
s=$?
if [ $s -eq 0 ]
then
    echo 'valid_command'
else

    echo 'invalid_command'
fi