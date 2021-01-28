#!/bin/bash
xinput set-prop 11 288 1 &
slstatus &
xwallpaper --output eDP-1 --stretch Pictures/wallpapers/unsplash_neon.jpg &
xrdb .Xresources &
xscreensaver-command -exit &
xscreensaver &
exec dwm
