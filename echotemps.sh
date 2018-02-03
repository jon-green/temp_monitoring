#!/bin/bash



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

underfloorraw=`cat /tmp/rawtemps | grep underfloor | awk {'print $2'}`
underfloorreal=`echo "scale=1; $underfloorraw / 1000" | bc`
#underfloorreal=NaN

echo $outsidereal
echo $diningreal
echo $heatingreal
echo $loungereal
echo $underfloorreal

