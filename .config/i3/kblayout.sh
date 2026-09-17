#!/usr/bin/env bash
# Toggles the X keyboard layout between "us" and "cz"

current=$(setxkbmap -query | awk '/^layout/{print $2}')

if [ "$current" = "us" ]; then
    setxkbmap cz
else
    setxkbmap us
fi
