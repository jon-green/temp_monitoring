#!/bin/bash



outsideraw=`cat /tmp/rawtemps | grep outside | awk {'print $2'}`
outsidereal=`echo "scale=1; $outsideraw / 1000" | bc`

#diningraw=`cat /tmp/rawtemps | grep dining | awk {'print $2'}`
#diningreal=`echo "scale=1; $diningraw / 1000" | bc`
diningreal=NaN

heatingraw=`cat /tmp/rawtemps | grep heating | awk {'print $2'}`
heatingreal=`echo "scale=1; $heatingraw / 1000" | bc`

hallwayraw=`cat /tmp/rawtemps | grep hallway | awk {'print $2'}`
hallwayreal=`echo "scale=1; $hallwayraw / 1000" | bc`
#hallwayreal=NaN

bedroomraw=`cat /tmp/rawtemps | grep bedroom | awk {'print $2'}`
bedroomreal=`echo "scale=1; $bedroomraw / 1000" | bc`
#underfloorreal=NaN

echo $outsidereal
echo $diningreal
echo $heatingreal
echo $hallwayreal
echo $bedroomreal

