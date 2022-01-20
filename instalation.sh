#!/bin/bash
apt install zsh ranger 
cp -r {powerlevel10k,.p10k.zsh,.zshrc} /etc/skel
cp -r plugin-zsh /usr/share

sudo usermod --shell /usr/bin/zsh root
sudo usermod --shell /usr/bin/zsh $(whoami)