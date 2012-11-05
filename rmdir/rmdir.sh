#!/usr/bin/env sh

if [ $# -lt 2 ] ; then
    echo "Usage: rmold.sh filemask numofdays"
    exit;
fi

find $1 -type f -mtime +$2 -delete
find $1 -type d -empty -delete
