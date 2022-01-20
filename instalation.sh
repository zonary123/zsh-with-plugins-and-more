#!/bin/bash
cp -r {powerlevel10k,.p10k.zsh,.zshrc} /etc/skel
apt install zsh
cp -r plugin-zsh /usr/share