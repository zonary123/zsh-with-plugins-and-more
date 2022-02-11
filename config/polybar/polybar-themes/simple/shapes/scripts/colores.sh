#!/bin/bash
hora=$(date | cut -d " " -f 5 | cut -d ":" -f 1)
if (( $hora < 6 ))
then
~/.config/polybar/shapes/scripts/colors-dark.sh --blue-gray
elif (( $hora < 12 ))
then
~/.config/polybar/shapes/scripts/colors-dark.sh --purple
elif (( $hora < 19 ))
then
~/.config/polybar/shapes/scripts/colors-dark.sh --blue
elif (( $hora < 25 ))
then
~/.config/polybar/shapes/scripts/colors-dark.sh --gray
fi