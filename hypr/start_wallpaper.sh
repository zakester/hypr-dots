#!/bin/bash
wallpaper=$(find ~/.wallpaper/ -type f | shuf --random-source=/dev/urandom -n 1)
echo $wallpaper
swww init;
swww img "$wallpaper"
