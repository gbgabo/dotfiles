#!/bin/bash
xinput set-prop "SYNA3602:00 0911:5288 Touchpad" "libinput Tapping Enabled" 1 &
xrdb .Xresources &
slstatus &
xwallpaper --output eDP-1 --stretch Pictures/wallpapers/unsplash_neon.jpg &
xscreensaver-command -exit &
xscreensaver -no-splash &
dunst &
fcitx -d &
exec dwm
