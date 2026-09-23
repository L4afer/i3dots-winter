#!/usr/bin/env bash
# xsecurelock launcher: wallpaper background + custom font + white text
# Requires: xsecurelock, mpv (for displaying the still image as the saver)

# --- Background: show the wallpaper via saver_mpv ---
export XSECURELOCK_SAVER=saver_mpv
export XSECURELOCK_LIST_VIDEOS_COMMAND="echo ~/.config/i3/WinterBlue768p.png"
export XSECURELOCK_IMAGE_DURATION_SECONDS=86400   # keep it on screen effectively forever

# --- Auth dialog appearance ---
export XSECURELOCK_FONT="Departure Mono Nerd Font:size=14"   # <- change to your font (fc-list to see names)
export XSECURELOCK_AUTH_FOREGROUND_COLOR="white"
export XSECURELOCK_AUTH_BACKGROUND_COLOR="black"
export XSECURELOCK_AUTH_WARNING_COLOR="red"

# --- Optional niceties ---
export XSECURELOCK_SHOW_USERNAME=1
export XSECURELOCK_SHOW_HOSTNAME=0
export XSECURELOCK_PASSWORD_PROMPT=cursor

exec xsecurelock
