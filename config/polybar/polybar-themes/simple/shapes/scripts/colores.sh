#!/bin/bash
hora=$(date | cut -d " " -f 5 | cut -d ":" -f 1)
if (( "0","1","2","3","4","5" == "$hora" ))
then
~/git/clone/polybar-themes/simple/shapes/scripts/colors-dark.sh --blue-gray
elif (( "6","7","8","9","10","11" == "$hora" ))
then
~/git/clone/polybar-themes/simple/shapes/scripts/colors-dark.sh --purple
elif (( "12","13","14","15","16","17" == "$hora" ))
then
~/git/clone/polybar-themes/simple/shapes/scripts/colors-dark.sh --blue
elif (( "18","19","20","21","22","23" == "$hora" ))
then
~/git/clone/polybar-themes/simple/shapes/scripts/colors-dark.sh --gray
fi 