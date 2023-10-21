#!/bin/bash

x=$(hyprctl activewindow -j | jq .at[0])
y=$(hyprctl activewindow -j | jq .at[1])
width=$(hyprctl activewindow -j | jq .size[0])
hight=$(hyprctl activewindow -j | jq .size[1])

grim -g "$x,$y $(hyprctl activewindow -j | jq .size[0])x$hight"
