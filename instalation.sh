#!/bin/bash
apt install zsh ranger htop
sudo dpkg -i /cosas/lsd_0.21.0_amd64.deb /cosas/bat_0.19.0_amd64.deb

sudo cp -r {powerlevel10k,.p10k.zsh,.zshrc} /etc/skel
sudo cp -r plugin-zsh /usr/share

sudo usermod --shell /usr/bin/zsh root
sudo usermod --shell /usr/bin/zsh $(whoami)
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install