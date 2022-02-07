#!/bin/bash
apt update && apt upgrade 
apt install screenfetch build-essential git vim xcb libxcb-util0-dev libxcb-ewmh-dev libxcb-randr0-dev libxcb-icccm4-dev libxcb-keysyms1-dev libxcb-xinerama0-dev libasound2-dev libxcb-xtest0-dev libxcb-shape0-dev
apt install cmake cmake-data pkg-config python3-sphinx libcairo2-dev libxcb1-dev libxcb-util0-dev libxcb-randr0-dev libxcb-composite0-dev python3-xcbgen xcb-proto libxcb-image0-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-xkb-dev libxcb-xrm-dev libxcb-cursor-dev libasound2-dev libpulse-dev libjsoncpp-dev libmpdclient-dev libcurl4-openssl-dev libnl-genl-3-dev libuv1-devsudo apt install cmake cmake-data pkg-config python3-sphinx libcairo2-dev libxcb1-dev libxcb-util0-dev libxcb-randr0-dev libxcb-composite0-dev python3-xcbgen xcb-proto libxcb-image0-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-xkb-dev libxcb-xrm-dev libxcb-cursor-dev libasound2-dev libpulse-dev libjsoncpp-dev libmpdclient-dev libcurl4-openssl-dev libnl-genl-3-dev libuv1-dev
apt-get install libuv1-dev
git clone https://github.com/yorkox0/autoBspwm
python3 ~/git/clone/zsh-with-plugins-and-moreautoBspwm/main.py
cd ~/git/clone/zsh-with-plugins-and-more
git clone --depth=1 https://github.com/adi1090x/polybar-themes.git 
chmod +x ~/git/clone/polybar-themes/setup.sh

cp -rf ~/git/clone/zsh-with-plugins-and-more/config/bspwm/bspwmrc ~/.config/bspwm/bspwmrc
cp -rf ~/git/clone/zsh-with-plugins-and-more/config/sxhkd/sxhkdrc ~/.config/sxhkd/sxhkdrc
rm ~/.wallpapers/wallpaper.jpg
cp -rf ~/git/clone/zsh-with-plugins-and-more/config/wallpaper/wallpaper.jpg ~/.wallpapers
cp -rf ~/git/clone/zsh-with-plugins-and-more/polybar-themes/simple/shapes ~/.config/polybar/
cp -rf ~/git/clone/zsh-with-plugins-and-more/config/polybar/polybar-themes/simple ~/git/clone/polybar-themes/simple/

#Picom
mkdir ~/.config/picom

cp -rf ~/git/clone/zsh-with-plugins-and-more/config/picom ~/.config
#Instalacion de zsh y mas paquetes
apt install zsh ranger xclip snapd tree
##Instalacion de visual studio code
#systemctl start snapd.service
#snap install --classic code

#Comandos wget
wget https://github.com/sharkdp/bat/releases/download/v0.19.0/bat_0.19.0_amd64.deb
wget https://github.com/Peltoche/lsd/releases/download/0.21.0/lsd_0.21.0_amd64.deb
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip 
dpkg -i ~/git/clone/zsh-with-plugins-and-more/lsd_0.21.0_amd64.deb
dpkg -i ~/git/clone/zsh-with-plugins-and-more/bat_0.19.0_amd64.deb
rm ~/git/clone/zsh-with-plugins-and-morelsd_0.21.0_amd64.deb
rm ~/git/clone/zsh-with-plugins-and-morebat_0.19.0_amd64.deb
#Comandos Git clone

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/git/clone/zsh-with-plugins-and-morepowerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ~/git/clone/zsh-with-plugins-and-moreplugins-zsh/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/git/clone/zsh-with-plugins-and-moreplugins-zsh/zsh-syntax-highlighting

#Instalacion de la tipografia Hack nerd Fonts
mv Hack.zip /usr/share/fonts
unzip /usr/share/fonts/Hack.zip

mkdir /usr/share/zsh-p10k 
cp -rf ~/git/clone/zsh-with-plugins-and-more/powerlevel10k /usr/share/zsh-p10k
#sudo cp -rf ~/git/clone/zsh-with-plugins-and-more{.p10k.zsh,.zshrc} /etc/skel
#sudo cp -rf ~/git/clone/zsh-with-plugins-and-more{.p10k.zsh,.zshrc} $HOME
#sudo cp -rf ~/git/clone/zsh-with-plugins-and-more{.p10k.zsh,.zshrc} /root

#Plugins ZSH
cp -rf plugins-zsh /usr/share

#Cambio de la terminal del usuario a zsh
usermod --shell /usr/bin/zsh $USERNAME
usermod --shell /usr/bin/zsh root

#Instalacion de fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
cp -rf ~/.fzf /root
/root/.fzf/install
/etc/skel/.fzf/install
~/.fzf/install

ln -s ~/.zshrc /root/.zshrc 
ln -s ~/.p10k.zsh /root/.p10k.zsh 
~/git/clone/polybar-themes/setup.sh
#/etc/skel
cp -rf ~/.fzf /etc/skel
cp -rf ~/.config /etc/skel

read -rp "Quieres una configuracion determinada si/no" respuesta
if [ "$respuesta" == "si" ]
then
    ~/git/clone/zsh-with-plugins-and-moreThemes.sh
else
    echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc
fi