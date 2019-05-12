#!/bin/sh

choices="Lock\nShutdown\nReboot\nExit"

chosen=$(echo -e "$choices" | dmenu -i -fn "undefined" -p "Leaving?")

case "$chosen" in
    Shutdown) shutdown -h now;;
    Reboot) reboot;;
    Exit) i3exit logout ;;
    Lock) blurlock;;
esac