#!/usr/bin/env bash

#===================================================================================
# Keep at the top of this file.
# shellcheck source=/dev/null
echo "INFO: logger is running now~"
#===================================================================================


# [Un]comment the following line to control display of this script for the tty in real time.  All other commands should be passed to task.
# tail -f "${LOGFILE}" &
# logging function - called task to make main section more readable...prepend it to commands, or group commands in a function and prepend the call.

function write_task() {
    echo "*DEBUG: task is running now in $PWD"
    echo "============================================================================================================"
    echo "$(date):$(printf ' %q' "$@")"
    echo "============================================================================================================"
    echo ""

    div="--------------------------------------------------------------------------------------------"
    div=$div$div

    width=108
    printf "%$width.${width}s" "$div"
    printf "\n%-7s | %-17s | %-65s | %10s\n" "STATUS" "TIME" "INFO" "MODULE"
    printf "%$width.${width}s\n" "$div"

    start=$(date +%s)
    "$@" 2>&1
    end=$(date +%s)
    runtime=$((end-start))
    echo ""
    err_task
    echo ""
    echo "Elapsed time for command was $runtime seconds."
    echo ""
} >> "${LOGFILE}"


function err_task() { 
    
    if [[ -n $(cat "$ERRLOG") ]]; 
    then 
        echo "---------------------------------------------|| Error Found ||---------------------------------------------"
    else 
        echo "=========================================|| Error is  not Found ||========================================="
    fi

    while IFS= read -r i; 
    do 
        echo "${i%?}"
    done < "$ERRLOG" 


    if [[ -n $(cat "$ERRLOG") ]]; then 
    echo "------------------------------------------------------------------------------------------------------------" 
    fi
   

}

echo "EXPORT LOGGER COMPLETE"

export write_task