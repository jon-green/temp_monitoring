#!/bin/bash

if [ "$1" == "raw" ]
then
	        mode=raw
	fi

	outside=28-0317318552ff
	dining=28-0317322bcaff
	heating=28-031731d6a6ff
	hallway=28-041731d205ff
	bedroom=28-031731e47dff


	function getTemp {
		rawtemp=`cat /sys/bus/w1/devices/$1/w1_slave | awk 'NR==2' | awk -F '=' '{print $2}'`
		realtemp=`echo "scale=1; $rawtemp / 1000" | bc`

		if [ "$mode" == "raw" ]
		then
			        echo $2: $rawtemp
			else
				echo $2: $realtemp
			fi
		}


		getTemp $outside outside
		#getTemp $dining diningroom
		getTemp $hallway hallway
		getTemp $heating heating
		getTemp $bedroom bedroom
