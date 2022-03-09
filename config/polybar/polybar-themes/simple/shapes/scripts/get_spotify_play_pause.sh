#!/bin/bash
if [[ $(playerctl status --player=spotify) == "Paused"  ]]
then
    echo "契"
fi

if [[ $(playerctl status --player=spotify) == "Playing"  ]]
then
    echo ""
fi