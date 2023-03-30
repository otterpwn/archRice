#!/bin/sh

CURRENT_SOURCE=$(pactl info | grep "Default Source" | cut -f3 -d" ")

if [ $(pactl list sources | grep -A 10 $CURRENT_SOURCE | grep "Mute: yes" | wc -c) -eq 11 ]
then
	echo " NO MIC " 
else
	echo " MIC "
fi
