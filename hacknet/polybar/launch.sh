#! /bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the process have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar
polybar laptop &

if [[ $(xrandr -q | grep 'HDMI-1 connected') ]]; then
	polybar monitor &
fi

my_laptop_external_monitor=$(xrandr --query | grep 'HDMI-1')
if [[ $my_laptop_external_monitor = *connected* ]]; then
    polybar monitor &
fi
