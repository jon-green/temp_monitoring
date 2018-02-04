#!/bin/bash

#Sleep to stop cron from clashing
sleep 10


outsideraw=`cat /tmp/rawtemps | grep outside | awk {'print $2'}`
outsidereal=`echo "scale=1; $outsideraw / 1000" | bc`

#diningraw=`cat /tmp/rawtemps | grep dining | awk {'print $2'}`
#diningreal=`echo "scale=1; $diningraw / 1000" | bc`
diningreal=NaN

heatingraw=`cat /tmp/rawtemps | grep heating | awk {'print $2'}`
heatingreal=`echo "scale=1; $heatingraw / 1000" | bc`

#loungeraw=`cat /tmp/rawtemps | grep lounge | awk {'print $2'}`
#loungereal=`echo "scale=1; $loungeraw / 1000" | bc`
loungereal=NaN

bedroomraw=`cat /tmp/rawtemps | grep underfloor | awk {'print $2'}`
bedroomreal=`echo "scale=1; $underfloorraw / 1000" | bc`
#underfloorreal=NaN

echo $outsidereal
echo $diningreal
echo $heatingreal
echo $loungereal
echo $bedroomreal

/usr/bin/rrdtool update /home/jon/temps/temps.rrd N:$outsidereal:$diningreal:$heatingreal:$loungereal:$bedroomreal
