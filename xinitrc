#!/bin/bash
xinput set-prop 11 288 1 &
slstatus &
feh --bg-scale $HOME/Pictures/wallpapers/void.png &
exec dwm
