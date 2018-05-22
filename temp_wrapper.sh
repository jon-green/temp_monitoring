#!/bin/bash

basedir=/home/jon/temp_monitoring

while true
do
	$basedir/gathertemps.sh
	$basedir/creategraphs.sh
	sleep 60
done
