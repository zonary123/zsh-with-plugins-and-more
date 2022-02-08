#!/bin/bash
sudo cp -rf ./config/bspwm /home/carlos/.config/
sudo cp -rf ./config/sxhkd/sxhkdrc /home/carlos/.config/sxhkd/sxhkdrc
sudo rm -r /home/carlos/.wallpapers/wallpaper.jpg
sudo rm -r /home/carlos/.config/polybar/shapes
sudo cp -rf ./config/.wallpapers /home/carlos
sudo cp -rf ./config/polybar/shapes /home/carlos/.config/polybar/
sudo cp -rf ./config/polybar/polybar-themes/simple/shapes /home/carlos/.config/polybar