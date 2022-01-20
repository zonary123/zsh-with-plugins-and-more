#!/bin/bash
#Instalacion de zsh
apt install zsh 

#Instalacion de lsd y bat
sudo dpkg -i ./cosas/lsd_0.21.0_amd64.deb ./cosas/bat_0.19.0_amd64.deb

#Instalacion de la tipografia Hack nerd Fonts
mv ./fonts/Hack.zip /usr/share/fonts
unzip /usr/share/fonts/Hack.zip

#Creacion de la carpeta zsh-p10k y copia de las carpetas a sus respectivos directorios
sudo mkdir /usr/share/zsh-p10k 
sudo cp -r ./powerlevel10k /usr/share/zsh-p10k
sudo cp -r ./{.p10k.zsh,.zshrc} /etc/skel
sudo cp -r plugins-zsh /usr/share

#Cambio de la terminal del usuario a zsh
sudo usermod --shell /usr/bin/zsh root
sudo usermod --shell /usr/bin/zsh $(whoami)

#Instalacion de fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
