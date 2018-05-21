#!/bin/bash


commonopts="--end now --start end-12h -X 0 --vertical-label degrees --width=600 --height=150 --full-size-mode"
commonopts2="--end now --start end-36h -X 0 --vertical-label degrees --width=600 --height=250 --full-size-mode"
commonopts3="--end now --start end-168h -X 0 --vertical-label degrees --width=600 --height=250 --full-size-mode"
commonoptsMnth="--end now --start end-672h -X 0 --vertical-label degrees --width=600 --height=250 --full-size-mode"


commonoptsDaily="--end now --start end-24h -X 0 --vertical-label degrees --width=600 --height=150 --full-size-mode"
commonoptsWeekly="--end now --start end-168h -X 0 --vertical-label degrees --width=600 --height=150 --full-size-mode"
commonoptsMonthly="--end now --start end-672h -X 0 --vertical-label degrees --width=600 --height=150 --full-size-mode"
commonoptsYearly="--end now --start end-8760h -X 0 --vertical-label degrees --width=600 --height=150 --full-size-mode"


### Outside

/usr/bin/rrdtool graph /home/jon/temp_monitoring/graphs/outside-daily.png \
DEF:temp1=/home/jon/temp_monitoring/temps.rrd:temp1:AVERAGE LINE2:temp1#396AB1:"Outside" \
GPRINT:temp1:MIN:"    Min\:%8.2lf" \
GPRINT:temp1:MAX:"Max\:%8.2lf" \
GPRINT:temp1:LAST:"Current\:%8.2lf \n" \
HRULE:0#0000FF:Freezing $commonoptsDaily

/usr/bin/rrdtool graph /home/jon/temp_monitoring/graphs/outside-weekly.png \
DEF:temp1=/home/jon/temp_monitoring/temps.rrd:temp1:AVERAGE LINE2:temp1#396AB1:"Outside" \
GPRINT:temp1:MIN:"    Min\:%8.2lf" \
GPRINT:temp1:MAX:"Max\:%8.2lf" \
GPRINT:temp1:LAST:"Current\:%8.2lf \n" \
HRULE:0#0000FF:Freezing $commonoptsWeekly

/usr/bin/rrdtool graph /home/jon/temp_monitoring/graphs/outside-monthly.png \
DEF:temp1=/home/jon/temp_monitoring/temps.rrd:temp1:AVERAGE LINE2:temp1#396AB1:"Outside" \
GPRINT:temp1:MIN:"    Min\:%8.2lf" \
GPRINT:temp1:MAX:"Max\:%8.2lf" \
GPRINT:temp1:LAST:"Current\:%8.2lf \n" \
HRULE:0#0000FF:Freezing $commonoptsMonthly

/usr/bin/rrdtool graph /home/jon/temp_monitoring/graphs/outside-yearly.png \
DEF:temp1=/home/jon/temp_monitoring/temps.rrd:temp1:AVERAGE LINE2:temp1#396AB1:"Outside" \
GPRINT:temp1:MIN:"    Min\:%8.2lf" \
GPRINT:temp1:MAX:"Max\:%8.2lf" \
GPRINT:temp1:LAST:"Current\:%8.2lf \n" \
HRULE:0#0000FF:Freezing $commonoptsYearly

### Hallway

/usr/bin/rrdtool graph /home/jon/temp_monitoring/graphs/hallway-daily.png \
DEF:temp4=/home/jon/temp_monitoring/temps.rrd:temp4:AVERAGE LINE2:temp4#396AB1:"hallway" \
GPRINT:temp4:MIN:"    Min\:%8.2lf" \
GPRINT:temp4:MAX:"Max\:%8.2lf" \
GPRINT:temp4:LAST:"Current\:%8.2lf \n" \
HRULE:0#0000FF:Freezing $commonoptsDaily

/usr/bin/rrdtool graph /home/jon/temp_monitoring/graphs/hallway-weekly.png \
DEF:temp4=/home/jon/temp_monitoring/temps.rrd:temp4:AVERAGE LINE2:temp4#396AB1:"hallway" \
GPRINT:temp4:MIN:"    Min\:%8.2lf" \
GPRINT:temp4:MAX:"Max\:%8.2lf" \
GPRINT:temp4:LAST:"Current\:%8.2lf \n" \
HRULE:0#0000FF:Freezing $commonoptsWeekly

/usr/bin/rrdtool graph /home/jon/temp_monitoring/graphs/hallway-monthly.png \
DEF:temp4=/home/jon/temp_monitoring/temps.rrd:temp4:AVERAGE LINE2:temp4#396AB1:"hallway" \
GPRINT:temp4:MIN:"    Min\:%8.2lf" \
GPRINT:temp4:MAX:"Max\:%8.2lf" \
GPRINT:temp4:LAST:"Current\:%8.2lf \n" \
HRULE:0#0000FF:Freezing $commonoptsMonthly

/usr/bin/rrdtool graph /home/jon/temp_monitoring/graphs/hallway-yearly.png \
DEF:temp4=/home/jon/temp_monitoring/temps.rrd:temp4:AVERAGE LINE2:temp4#396AB1:"hallway" \
GPRINT:temp4:MIN:"    Min\:%8.2lf" \
GPRINT:temp4:MAX:"Max\:%8.2lf" \
GPRINT:temp4:LAST:"Current\:%8.2lf \n" \
HRULE:0#0000FF:Freezing $commonoptsYearly

### Bedroom

/usr/bin/rrdtool graph /home/jon/temp_monitoring/graphs/bedroom-daily.png \
DEF:temp5=/home/jon/temp_monitoring/temps.rrd:temp5:AVERAGE LINE2:temp5#396AB1:"bedroom" \
GPRINT:temp5:MIN:"    Min\:%8.2lf" \
GPRINT:temp5:MAX:"Max\:%8.2lf" \
GPRINT:temp5:LAST:"Current\:%8.2lf \n" \
HRULE:0#0000FF:Freezing $commonoptsDaily

/usr/bin/rrdtool graph /home/jon/temp_monitoring/graphs/bedroom-weekly.png \
DEF:temp5=/home/jon/temp_monitoring/temps.rrd:temp5:AVERAGE LINE2:temp5#396AB1:"bedroom" \
GPRINT:temp5:MIN:"    Min\:%8.2lf" \
GPRINT:temp5:MAX:"Max\:%8.2lf" \
GPRINT:temp5:LAST:"Current\:%8.2lf \n" \
HRULE:0#0000FF:Freezing $commonoptsWeekly

/usr/bin/rrdtool graph /home/jon/temp_monitoring/graphs/bedroom-monthly.png \
DEF:temp5=/home/jon/temp_monitoring/temps.rrd:temp5:AVERAGE LINE2:temp5#396AB1:"bedroom" \
GPRINT:temp5:MIN:"    Min\:%8.2lf" \
GPRINT:temp5:MAX:"Max\:%8.2lf" \
GPRINT:temp5:LAST:"Current\:%8.2lf \n" \
HRULE:0#0000FF:Freezing $commonoptsMonthly

/usr/bin/rrdtool graph /home/jon/temp_monitoring/graphs/bedroom-yearly.png \
DEF:temp5=/home/jon/temp_monitoring/temps.rrd:temp5:AVERAGE LINE2:temp5#396AB1:"bedroom" \
GPRINT:temp5:MIN:"    Min\:%8.2lf" \
GPRINT:temp5:MAX:"Max\:%8.2lf" \
GPRINT:temp5:LAST:"Current\:%8.2lf \n" \
HRULE:0#0000FF:Freezing $commonoptsYearly

### Heating

/usr/bin/rrdtool graph /home/jon/temp_monitoring/graphs/heating-daily.png \
DEF:temp3=/home/jon/temp_monitoring/temps.rrd:temp3:AVERAGE LINE2:temp3#396AB1:"heating" \
GPRINT:temp3:MIN:"    Min\:%8.2lf" \
GPRINT:temp3:MAX:"Max\:%8.2lf" \
GPRINT:temp3:LAST:"Current\:%8.2lf \n" \
HRULE:0#0000FF:Freezing $commonoptsDaily

/usr/bin/rrdtool graph /home/jon/temp_monitoring/graphs/heating-weekly.png \
DEF:temp3=/home/jon/temp_monitoring/temps.rrd:temp3:AVERAGE LINE2:temp3#396AB1:"heating" \
GPRINT:temp3:MIN:"    Min\:%8.2lf" \
GPRINT:temp3:MAX:"Max\:%8.2lf" \
GPRINT:temp3:LAST:"Current\:%8.2lf \n" \
HRULE:0#0000FF:Freezing $commonoptsWeekly

/usr/bin/rrdtool graph /home/jon/temp_monitoring/graphs/heating-monthly.png \
DEF:temp3=/home/jon/temp_monitoring/temps.rrd:temp3:AVERAGE LINE2:temp3#396AB1:"heating" \
GPRINT:temp3:MIN:"    Min\:%8.2lf" \
GPRINT:temp3:MAX:"Max\:%8.2lf" \
GPRINT:temp3:LAST:"Current\:%8.2lf \n" \
HRULE:0#0000FF:Freezing $commonoptsMonthly

/usr/bin/rrdtool graph /home/jon/temp_monitoring/graphs/heating-yearly.png \
DEF:temp3=/home/jon/temp_monitoring/temps.rrd:temp3:AVERAGE LINE2:temp3#396AB1:"heating" \
GPRINT:temp3:MIN:"    Min\:%8.2lf" \
GPRINT:temp3:MAX:"Max\:%8.2lf" \
GPRINT:temp3:LAST:"Current\:%8.2lf \n" \
HRULE:0#0000FF:Freezing $commonoptsYearly


/usr/bin/rrdtool graph /home/jon/temp_monitoring/graphs/temp1.png \
DEF:temp1=/home/jon/temp_monitoring/temps.rrd:temp1:AVERAGE LINE2:temp1#396AB1:"Outside" \
GPRINT:temp1:MIN:"    Min\:%8.2lf" \
GPRINT:temp1:MAX:"Max\:%8.2lf" \
GPRINT:temp1:LAST:"Current\:%8.2lf \n" \
HRULE:0#0000FF:Freezing $commonopts


/usr/bin/rrdtool graph /home/jon/temp_monitoring/graphs/outside-month.png \
DEF:temp1=/home/jon/temp_monitoring/temps.rrd:temp1:AVERAGE LINE2:temp1#396AB1:"Outside" \
GPRINT:temp1:MIN:"    Min\:%8.2lf" \
GPRINT:temp1:MAX:"Max\:%8.2lf" \
GPRINT:temp1:LAST:"Current\:%8.2lf \n" \
HRULE:0#0000FF:Freezing $commonoptsMnth

/usr/bin/rrdtool graph /home/jon/temp_monitoring/graphs/temp2.png \
DEF:temp2=/home/jon/temp_monitoring/temps.rrd:temp2:AVERAGE LINE2:temp2#DA7C30:"Dining Room" \
GPRINT:temp2:MIN:"Min\:%8.2lf" \
GPRINT:temp2:MAX:"Max\:%8.2lf" \
GPRINT:temp2:LAST:"Current\:%8.2lf \n" $commonopts

/usr/bin/rrdtool graph /home/jon/temp_monitoring/graphs/temp3.png \
DEF:temp3=/home/jon/temp_monitoring/temps.rrd:temp3:AVERAGE LINE2:temp3#3E6951:"Heating" \
GPRINT:temp3:MIN:"    Min\:%8.2lf" \
GPRINT:temp3:MAX:"Max\:%8.2lf" \
GPRINT:temp3:LAST:"Current\:%8.2lf \n" $commonopts

/usr/bin/rrdtool graph /home/jon/temp_monitoring/graphs/temp4.png \
DEF:temp4=/home/jon/temp_monitoring/temps.rrd:temp4:AVERAGE LINE2:temp4#CC2529:"Hallway" \
GPRINT:temp4:MIN:"     Min\:%8.2lf" \
GPRINT:temp4:MAX:"Max\:%8.2lf" \
GPRINT:temp4:LAST:"Current\:%8.2lf \n" $commonopts

/usr/bin/rrdtool graph /home/jon/temp_monitoring/graphs/temp5.png \
DEF:temp5=/home/jon/temp_monitoring/temps.rrd:temp5:AVERAGE LINE2:temp5#535154:"Bedroom" \
GPRINT:temp5:MIN:" Min\:%8.2lf" \
GPRINT:temp5:MAX:"Max\:%8.2lf" \
GPRINT:temp5:LAST:"Current\:%8.2lf \n" $commonopts

/usr/bin/rrdtool graph /home/jon/temp_monitoring/graphs/all1.png \
DEF:temp1=/home/jon/temp_monitoring/temps.rrd:temp1:AVERAGE LINE2:temp1#396AB1:"Outside" \
GPRINT:temp1:MIN:"    Min\:%8.2lf" \
GPRINT:temp1:MAX:"Max\:%8.2lf" \
GPRINT:temp1:LAST:"Current\:%8.2lf \n" \
DEF:temp3=/home/jon/temp_monitoring/temps.rrd:temp3:AVERAGE LINE2:temp3#DA7C30:"Heating" \
GPRINT:temp3:MIN:"Min\:%8.2lf" \
GPRINT:temp3:MAX:"Max\:%8.2lf" \
GPRINT:temp3:LAST:"Current\:%8.2lf \n" \
DEF:temp5=/home/jon/temp_monitoring/temps.rrd:temp5:AVERAGE LINE2:temp5#535154:"Bedroom" \
GPRINT:temp5:MIN:" Min\:%8.2lf" \
GPRINT:temp5:MAX:"Max\:%8.2lf" \
GPRINT:temp5:LAST:"Current\:%8.2lf \n" \
HRULE:0#0000FF:Freezing $commonopts2

/usr/bin/rrdtool graph /home/jon/temp_monitoring/graphs/all1-week.png \
DEF:temp1=/home/jon/temp_monitoring/temps.rrd:temp1:AVERAGE LINE2:temp1#396AB1:"Outside" \
GPRINT:temp1:MIN:"    Min\:%8.2lf" \
GPRINT:temp1:MAX:"Max\:%8.2lf" \
GPRINT:temp1:LAST:"Current\:%8.2lf \n" \
DEF:temp2=/home/jon/temp_monitoring/temps.rrd:temp2:AVERAGE LINE2:temp2#DA7C30:"Dining Room" \
GPRINT:temp2:MIN:"Min\:%8.2lf" \
GPRINT:temp2:MAX:"Max\:%8.2lf" \
GPRINT:temp2:LAST:"Current\:%8.2lf \n" \
DEF:temp4=/home/jon/temp_monitoring/temps.rrd:temp4:AVERAGE LINE2:temp4#CC2529:"Hallway" \
GPRINT:temp4:MIN:"     Min\:%8.2lf" \
GPRINT:temp4:MAX:"Max\:%8.2lf" \
GPRINT:temp4:LAST:"Current\:%8.2lf \n" \
DEF:temp5=/home/jon/temp_monitoring/temps.rrd:temp5:AVERAGE LINE2:temp5#535154:"Bedroom" \
GPRINT:temp5:MIN:" Min\:%8.2lf" \
GPRINT:temp5:MAX:"Max\:%8.2lf" \
GPRINT:temp5:LAST:"Current\:%8.2lf \n" \
HRULE:0#0000FF:Freezing $commonopts3


/usr/bin/rrdtool graph /home/jon/temp_monitoring/graphs/all1-month.png \
DEF:temp1=/home/jon/temp_monitoring/temps.rrd:temp1:AVERAGE LINE2:temp1#396AB1:"Outside" \
GPRINT:temp1:MIN:"    Min\:%8.2lf" \
GPRINT:temp1:MAX:"Max\:%8.2lf" \
GPRINT:temp1:LAST:"Current\:%8.2lf \n" \
DEF:temp2=/home/jon/temp_monitoring/temps.rrd:temp2:AVERAGE LINE2:temp2#DA7C30:"Dining Room" \
GPRINT:temp2:MIN:"Min\:%8.2lf" \
GPRINT:temp2:MAX:"Max\:%8.2lf" \
GPRINT:temp2:LAST:"Current\:%8.2lf \n" \
DEF:temp4=/home/jon/temp_monitoring/temps.rrd:temp4:AVERAGE LINE2:temp4#CC2529:"Hallway" \
GPRINT:temp4:MIN:"     Min\:%8.2lf" \
GPRINT:temp4:MAX:"Max\:%8.2lf" \
GPRINT:temp4:LAST:"Current\:%8.2lf \n" \
DEF:temp5=/home/jon/temp_monitoring/temps.rrd:temp5:AVERAGE LINE2:temp5#535154:"Bedroom" \
GPRINT:temp5:MIN:" Min\:%8.2lf" \
GPRINT:temp5:MAX:"Max\:%8.2lf" \
GPRINT:temp5:LAST:"Current\:%8.2lf \n" \
HRULE:0#0000FF:Freezing $commonoptsMnth
