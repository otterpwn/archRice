#!/bin/sh

xrandr --output eDP-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI-1 --off --output DP-1 --off --output DP-2 --off --output DP-3 --off --output DP-4 --off

# set wallpaper
feh --bg-fill /home/cinderz/Desktop/archRice/allWallpapers/hacknet.jpg

# set bspwm workspaces
bspc monitor eDP-1 -d 1 2 3 4 5 6 7 8 9 10

# launch plolybar config
$HOME/.config/polybar/launch.sh
