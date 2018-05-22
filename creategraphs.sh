#!/bin/bash

basedir=/home/jon/temp_monitoring

function createGraph()
{
for file in $basedir/rrd/*.rrd
do
    sensor=${file#$basedir/rrd/}
    sensor=${sensor%.rrd}
    rrdtool graph $basedir/www/graphs/$sensor-$1.png \
    DEF:temp=$file:temp:AVERAGE LINE2:temp#396AB1:"$sensor" \
    GPRINT:temp:MIN:"    Min\:%8.2lf" \
    GPRINT:temp:MAX:"Max\:%8.2lf" \
    GPRINT:temp:LAST:"Current\:%8.2lf \n" \
    HRULE:0#0000FF:Freezing \
    --end now --start end-$1 -X 0 \
    --vertical-label degrees --full-size-mode \
    --width=600 --height=150 \
    COMMENT:"Last updated `date '+%d/%m %H\:%M\:%S'`   "
done
}

createGraph '12h'
createGraph '168h'
createGraph '672h'
createGraph '8760h'
