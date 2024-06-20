#!/bin/sh
# Version 1.0

METRIC="$1"

LOGFILE="/tmp/zabbix_debug.log"
echo "Metric: $METRIC" >> $LOGFILE

if [ -z "$1" ]; then
    echo "Please specify a metric" >> $LOGFILE
    exit 1
fi

case $METRIC in
    'er_dia')
        RESULT=$(/bin/sh /home/luis_acero/script_error_daemon.sh)
        echo "Result: $RESULT" >> $LOGFILE
        echo $RESULT
        ;;
    *)
        echo "Not selected metric" >> $LOGFILE
        exit 0
        ;;
esac
