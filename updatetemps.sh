#!/bin/bash

#Sleep to stop cron from clashing
sleep 10


outsideraw=`cat /tmp/rawtemps* | grep outside | awk {'print $2'}`
outsidereal=`echo "scale=1; $outsideraw / 1000" | bc`

shedraw=`cat /tmp/rawtemps* | grep shed | awk {'print $2'}`
shedreal=`echo "scale=1; $shedraw / 1000" | bc`

heatingraw=`cat /tmp/rawtemps* | grep heating | awk {'print $2'}`
heatingreal=`echo "scale=1; $heatingraw / 1000" | bc`

hallwayraw=`cat /tmp/rawtemps* | grep hallway | awk {'print $2'}`
hallwayreal=`echo "scale=1; $hallwayraw / 1000" | bc`
#hallwayreal=NaN

bedroomraw=`cat /tmp/rawtemps* | grep bedroom | awk {'print $2'}`
bedroomreal=`echo "scale=1; $bedroomraw / 1000" | bc`
#underfloorreal=NaN

echo $outsidereal
echo $shedreal
echo $heatingreal
echo $hallwayreal
echo $bedroomreal

/usr/bin/rrdtool update /home/jon/temp_monitoring/temps.rrd N:$outsidereal:$shedreal:$heatingreal:$hallwayreal:$bedroomreal
