#!/bin/bash
xinput set-prop "SYNA3602:00 0911:5288 Touchpad" "libinput Tapping Enabled" 1 &
slstatus &
xwallpaper --output eDP-1 --stretch Pictures/wallpapers/unsplash_neon.jpg &
xrdb .Xresources &
xscreensaver-command -exit &
xscreensaver &
dunst &
fcitx -d &
exec dwm
