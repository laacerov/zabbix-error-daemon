#!/bin/sh
# Version 1.0

METRIC="$1"

if [ -z "$1" ]; then
    echo "Please specify a metric"
    exit 1
fi

case $METRIC in

        'er_dia')       /bin/sh /usr/src/sc_error_daemon.sh;;


    *)  echo "Not selected metric"
        exit 0
        ;;
esac
