#!/bin/sh

if [ "$1" == "-w" ]; then
    chosen=$($HOME/.dotfiles/scripts/windowSwitch/windowSwitch.py -w | dmenu -p "Current Window:" -i -fn undefined)
else
    chosen=$($HOME/.dotfiles/scripts/windowSwitch/windowSwitch.py | dmenu -p "Window:" -i -fn undefined)
fi

echo $chosen

$HOME/.dotfiles/scripts/windowSwitch/windowSwitch.py -f "$chosen"