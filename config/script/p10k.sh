#!/bin/bash
if [ "$respuesta" == "si" ]
then
    ./Themes.sh
else
    p10k configure
fi