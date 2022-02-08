#!/bin/bash
apt update && apt upgrade 
apt install screenfetch build-essential git vim xcb libxcb-util0-dev libxcb-ewmh-dev libxcb-randr0-dev libxcb-icccm4-dev libxcb-keysyms1-dev libxcb-xinerama0-dev libasound2-dev libxcb-xtest0-dev libxcb-shape0-dev
apt install cmake cmake-data pkg-config python3-sphinx libcairo2-dev libxcb1-dev libxcb-util0-dev libxcb-randr0-dev libxcb-composite0-dev python3-xcbgen xcb-proto libxcb-image0-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-xkb-dev libxcb-xrm-dev libxcb-cursor-dev libasound2-dev libpulse-dev libjsoncpp-dev libmpdclient-dev libcurl4-openssl-dev libnl-genl-3-dev libuv1-devsudo apt install cmake cmake-data pkg-config python3-sphinx libcairo2-dev libxcb1-dev libxcb-util0-dev libxcb-randr0-dev libxcb-composite0-dev python3-xcbgen xcb-proto libxcb-image0-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-xkb-dev libxcb-xrm-dev libxcb-cursor-dev libasound2-dev libpulse-dev libjsoncpp-dev libmpdclient-dev libcurl4-openssl-dev libnl-genl-3-dev libuv1-dev
apt install libuv1-dev

git clone https://github.com/yorkox0/autoBspwm

python3 /home/carlos/git/clone/zsh-with-plugins-and-more/autoBspwm/main.py

cd /home/carlos/git/clone/zsh-with-plugins-and-more

git clone --depth=1 https://github.com/adi1090x/polybar-themes.git 
chmod +x /home/carlos/git/clone/zsh-with-plugins-and-more/polybar-themes/setup.sh
/home/carlos/git/clone/zsh-with-plugins-and-more/polybar-themes/setup.sh

cp -rf ./config/bspwm /home/carlos/.config/
cp -rf ./config/sxhkd/sxhkdrc /home/carlos/.config/sxhkd/sxhkdrc
rm -r /home/carlos/.wallpapers/wallpaper.jpg
rm -r /home/carlos/.config/polybar/shapes
cp -rf ./config/wallpaper/wallpaper.jpg /home/carlos/.wallpapers
cp -rf ./config/polybar/shapes /home/carlos/.config/polybar/
cp -rf ./config/polybar/polybar-themes/simple/shapes /home/carlos/.config/polybar

#Picom
mkdir /home/carlos/.config/picom

cp -rf /home/carlos/git/clone/zsh-with-plugins-and-more/config/picom /home/carlos/.config
#Instalacion de zsh y mas paquetes
apt install zsh ranger xclip snapd tree
##Instalacion de visual studio code
#systemctl start snapd.service
#snap install --classic code

#Comandos wget
wget https://github.com/sharkdp/bat/releases/download/v0.19.0/bat_0.19.0_amd64.deb
wget https://github.com/Peltoche/lsd/releases/download/0.21.0/lsd_0.21.0_amd64.deb
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip 
dpkg -i ./lsd_0.21.0_amd64.deb
dpkg -i ./bat_0.19.0_amd64.deb
rm ./lsd_0.21.0_amd64.deb
rm ./bat_0.19.0_amd64.deb
#Comandos Git clone

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git /home/carlos/git/clone/zsh-with-plugins-and-more/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions /home/carlos/git/clone/zsh-with-plugins-and-more/plugins-zsh/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting /home/carlos/git/clone/zsh-with-plugins-and-more/plugins-zsh/zsh-syntax-highlighting

#Instalacion de la tipografia Hack nerd Fonts
mv ./Hack.zip /usr/share/fonts
unzip /usr/share/fonts/Hack.zip

mkdir /usr/share/zsh-p10k 
cp -rf /home/carlos/git/clone/zsh-with-plugins-and-more/powerlevel10k /usr/share/zsh-p10k
#sudo cp -rf /home/carlos/git/clone/zsh-with-plugins-and-more{.p10k.zsh,.zshrc} /etc/skel
#sudo cp -rf /home/carlos/git/clone/zsh-with-plugins-and-more{.p10k.zsh,.zshrc} $HOME
#sudo cp -rf /home/carlos/git/clone/zsh-with-plugins-and-more{.p10k.zsh,.zshrc} /root

#Plugins ZSH
cp -rf plugins-zsh /usr/share

#Cambio de la terminal del usuario a zsh
usermod --shell /usr/bin/zsh $USERNAME
usermod --shell /usr/bin/zsh root

#Instalacion de fzf
git clone --depth 1 https://github.com/junegunn/fzf.git /home/carlos/.fzf
cp -rf /home/carlos/.fzf /root
/root/.fzf/install
/etc/skel/.fzf/install
/home/carlos/.fzf/install

ln -s /home/carlos/.zshrc /root/.zshrc 
ln -s /home/carlos/.p10k.zsh /root/.p10k.zsh 
/home/carlos/git/clone/polybar-themes/setup.sh
#/etc/skel
cp -rf /home/carlos/.fzf /etc/skel
cp -rf /home/carlos/.config /etc/skel

read -rp "Quieres una configuracion determinada si/no" respuesta
if [ "$respuesta" == "si" ]
then
    ./Themes.sh
else
    echo 'source /home/carlos/powerlevel10k/powerlevel10k.zsh-theme' >> /home/carlos/.zshrc
fi