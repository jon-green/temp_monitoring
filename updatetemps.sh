#!/bin/bash


basedir=/home/jon/temp_monitoring

if [ ! -f $basedir/rrd/$1.rrd ] # create rrd if it doesn't exist
then
    rrdtool create $basedir/rrd/$1.rrd \
    --step 60 \
    DS:temp:GAUGE:120:0:100 \
    RRA:MAX:0.5:1:525600

    retval=$?

    if [ $retval -gt 0 ]
    then
        exit 0
    fi
fi

/usr/bin/rrdtool update $basedir/rrd/$1.rrd N:$2
