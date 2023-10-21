#!/bin/bash

path="/home/zakester/.config/waybar/kb_layout"
$(hyprctl switchxkblayout sigmachip-usb-keyboard next)
layout=$(cat $path)

case $layout in
  de)
    echo "dz" > $path
    ;;
  dz)
    echo "ar" > $path
    ;;
  ar)
    echo "de" > $path
    ;;
esac
