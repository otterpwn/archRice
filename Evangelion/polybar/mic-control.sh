#!/bin/sh

if [ $(pulseaudio-ctl | grep "Is source muted" | wc -c) -eq 47 ]
then
	echo " NO MIC " 
else
	echo " MIC "
fi
