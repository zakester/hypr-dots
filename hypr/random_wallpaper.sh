#!/usr/bin/env sh
wallpaper=$(find ~/.wallpaper/ -type f | shuf --random-source=/dev/urandom -n 1) 
swww img "$wallpaper"
