#!/usr/bin/env bash

function log_type() {

    local type=$1
    case $type in

    info|-i)
        echo "INFO"
        ;;

    warn|-w)
        echo "WARNING"
        ;;

    debug|-d)
        echo "DEBUG"
        ;;

    fetal|-f)
        echo "DEBUG"
        ;;

    error|-e)
        echo "ERROR"
        ;;

    *)
        echo "DIALOG"
        ;;

    esac
}

function log_writter() {
    
    STATUS=$(log_type "$1")
    MILLISEC=$(python3 -c 'import datetime; print(datetime.datetime.now().strftime("%f"))')
    TIME=$(date +'%T : ')$MILLISEC
    MODULE=$3
    INFO=$2
    
    printf "\n%-7s | %-16s | %-65s | %10s\n" "$STATUS" "$TIME" "$INFO" "$MODULE"

    
}

export log_writter