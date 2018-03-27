#!/usr/bin/env fish

# Set wallpaper
feh --bg-fill ~/Pictures/wallpaper.jpg

# Enable compositing
xcompmgr &

# Open the panel and add items to the system tray
tint2 &
volti &
nm-applet &
