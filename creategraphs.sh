#!/bin/bash

sleep 20

commonopts="--end now --start end-12h -X 0 --vertical-label degrees --width=600 --height=150 --full-size-mode"
commonopts2="--end now --start end-36h -X 0 --vertical-label degrees --width=600 --height=250 --full-size-mode"
commonopts3="--end now --start end-168h -X 0 --vertical-label degrees --width=600 --height=250 --full-size-mode"
commonoptsMnth="--end now --start end-672h -X 0 --vertical-label degrees --width=600 --height=250 --full-size-mode"

/usr/bin/rrdtool graph /home/jon/temps/graphs/temp1.png \
DEF:temp1=/home/jon/temps/temps.rrd:temp1:AVERAGE LINE2:temp1#396AB1:"Outside" \
GPRINT:temp1:MIN:"    Min\:%8.2lf" \
GPRINT:temp1:MAX:"Max\:%8.2lf" \
GPRINT:temp1:LAST:"Current\:%8.2lf \n" \
HRULE:0#0000FF:Freezing $commonopts


/usr/bin/rrdtool graph /home/jon/temps/graphs/outside-month.png \
DEF:temp1=/home/jon/temps/temps.rrd:temp1:AVERAGE LINE2:temp1#396AB1:"Outside" \
GPRINT:temp1:MIN:"    Min\:%8.2lf" \
GPRINT:temp1:MAX:"Max\:%8.2lf" \
GPRINT:temp1:LAST:"Current\:%8.2lf \n" \
HRULE:0#0000FF:Freezing $commonoptsMnth

/usr/bin/rrdtool graph /home/jon/temps/graphs/temp2.png \
DEF:temp2=/home/jon/temps/temps.rrd:temp2:AVERAGE LINE2:temp2#DA7C30:"Dining Room" \
GPRINT:temp2:MIN:"Min\:%8.2lf" \
GPRINT:temp2:MAX:"Max\:%8.2lf" \
GPRINT:temp2:LAST:"Current\:%8.2lf \n" $commonopts

/usr/bin/rrdtool graph /home/jon/temps/graphs/temp3.png \
DEF:temp3=/home/jon/temps/temps.rrd:temp3:AVERAGE LINE2:temp3#3E6951:"Heating" \
GPRINT:temp3:MIN:"    Min\:%8.2lf" \
GPRINT:temp3:MAX:"Max\:%8.2lf" \
GPRINT:temp3:LAST:"Current\:%8.2lf \n" $commonopts

/usr/bin/rrdtool graph /home/jon/temps/graphs/temp4.png \
DEF:temp4=/home/jon/temps/temps.rrd:temp4:AVERAGE LINE2:temp4#CC2529:"Lounge" \
GPRINT:temp4:MIN:"     Min\:%8.2lf" \
GPRINT:temp4:MAX:"Max\:%8.2lf" \
GPRINT:temp4:LAST:"Current\:%8.2lf \n" $commonopts

/usr/bin/rrdtool graph /home/jon/temps/graphs/temp5.png \
DEF:temp5=/home/jon/temps/temps.rrd:temp5:AVERAGE LINE2:temp5#535154:"Bedroom" \
GPRINT:temp5:MIN:" Min\:%8.2lf" \
GPRINT:temp5:MAX:"Max\:%8.2lf" \
GPRINT:temp5:LAST:"Current\:%8.2lf \n" $commonopts

/usr/bin/rrdtool graph /home/jon/temps/graphs/all1.png \
DEF:temp1=/home/jon/temps/temps.rrd:temp1:AVERAGE LINE2:temp1#396AB1:"Outside" \
GPRINT:temp1:MIN:"    Min\:%8.2lf" \
GPRINT:temp1:MAX:"Max\:%8.2lf" \
GPRINT:temp1:LAST:"Current\:%8.2lf \n" \
DEF:temp3=/home/jon/temps/temps.rrd:temp3:AVERAGE LINE2:temp3#DA7C30:"Heating" \
GPRINT:temp3:MIN:"Min\:%8.2lf" \
GPRINT:temp3:MAX:"Max\:%8.2lf" \
GPRINT:temp3:LAST:"Current\:%8.2lf \n" \
DEF:temp5=/home/jon/temps/temps.rrd:temp5:AVERAGE LINE2:temp5#535154:"Bedroom" \
GPRINT:temp5:MIN:" Min\:%8.2lf" \
GPRINT:temp5:MAX:"Max\:%8.2lf" \
GPRINT:temp5:LAST:"Current\:%8.2lf \n" \
HRULE:0#0000FF:Freezing $commonopts2

/usr/bin/rrdtool graph /home/jon/temps/graphs/all1-week.png \
DEF:temp1=/home/jon/temps/temps.rrd:temp1:AVERAGE LINE2:temp1#396AB1:"Outside" \
GPRINT:temp1:MIN:"    Min\:%8.2lf" \
GPRINT:temp1:MAX:"Max\:%8.2lf" \
GPRINT:temp1:LAST:"Current\:%8.2lf \n" \
DEF:temp2=/home/jon/temps/temps.rrd:temp2:AVERAGE LINE2:temp2#DA7C30:"Dining Room" \
GPRINT:temp2:MIN:"Min\:%8.2lf" \
GPRINT:temp2:MAX:"Max\:%8.2lf" \
GPRINT:temp2:LAST:"Current\:%8.2lf \n" \
DEF:temp4=/home/jon/temps/temps.rrd:temp4:AVERAGE LINE2:temp4#CC2529:"Lounge" \
GPRINT:temp4:MIN:"     Min\:%8.2lf" \
GPRINT:temp4:MAX:"Max\:%8.2lf" \
GPRINT:temp4:LAST:"Current\:%8.2lf \n" \
DEF:temp5=/home/jon/temps/temps.rrd:temp5:AVERAGE LINE2:temp5#535154:"Bedroom" \
GPRINT:temp5:MIN:" Min\:%8.2lf" \
GPRINT:temp5:MAX:"Max\:%8.2lf" \
GPRINT:temp5:LAST:"Current\:%8.2lf \n" \
HRULE:0#0000FF:Freezing $commonopts3


/usr/bin/rrdtool graph /home/jon/temps/graphs/all1-month.png \
DEF:temp1=/home/jon/temps/temps.rrd:temp1:AVERAGE LINE2:temp1#396AB1:"Outside" \
GPRINT:temp1:MIN:"    Min\:%8.2lf" \
GPRINT:temp1:MAX:"Max\:%8.2lf" \
GPRINT:temp1:LAST:"Current\:%8.2lf \n" \
DEF:temp2=/home/jon/temps/temps.rrd:temp2:AVERAGE LINE2:temp2#DA7C30:"Dining Room" \
GPRINT:temp2:MIN:"Min\:%8.2lf" \
GPRINT:temp2:MAX:"Max\:%8.2lf" \
GPRINT:temp2:LAST:"Current\:%8.2lf \n" \
DEF:temp4=/home/jon/temps/temps.rrd:temp4:AVERAGE LINE2:temp4#CC2529:"Lounge" \
GPRINT:temp4:MIN:"     Min\:%8.2lf" \
GPRINT:temp4:MAX:"Max\:%8.2lf" \
GPRINT:temp4:LAST:"Current\:%8.2lf \n" \
DEF:temp5=/home/jon/temps/temps.rrd:temp5:AVERAGE LINE2:temp5#535154:"Bedroom" \
GPRINT:temp5:MIN:" Min\:%8.2lf" \
GPRINT:temp5:MAX:"Max\:%8.2lf" \
GPRINT:temp5:LAST:"Current\:%8.2lf \n" \
HRULE:0#0000FF:Freezing $commonoptsMnth
