#!/bin/bash

path="/home/zakester/.config/waybar/kb_layout"
$(hyprctl switchxkblayout sigmachip-usb-keyboard prev)
layout=$(cat $path)

case $layout in
  de)
    echo "ar" > $path
    ;;
  dz)
    echo "de" > $path
    ;;
  ar)
    echo "dz" > $path
    ;;
esac
