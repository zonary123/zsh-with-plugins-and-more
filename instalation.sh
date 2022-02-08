#!/bin/bash
#========================================#
#               Colores                  #
#========================================#
negro="\e[0;30m"
grisoscuro="\e[0;31m"
azul="\e[0;34m"
azulreslatado="\e[1;31m"
verde="\e[0;32m"
verderesaltado="\e[0;32m"
cian="\e[0;36m"
cianresaltado="\e[1;36m"
rojo="\e[0;31m"
rojoresaltado="\e[1;31m"
purpura="\e[0;35m"
purpuraresaltado="\e[1;35m"
cafe="\e[0;33m"
amarillo="\e[1;33m"
gris="\e[0;37m"
blanco="\e[0;31m"

#========================================#
#                Start                   #
#========================================#
echo -e "${amarillo}[${rojo}*${amarillo}]${cian} Instalacion de paquetes"


sudo apt update && sudo apt upgrade 
sudo apt install screenfetch build-essential git vim xcb libxcb-util0-dev libxcb-ewmh-dev libxcb-randr0-dev libxcb-icccm4-dev libxcb-keysyms1-dev libxcb-xinerama0-dev libasound2-dev libxcb-xtest0-dev libxcb-shape0-dev
sudo apt install cmake cmake-data pkg-config python3-sphinx libcairo2-dev libxcb1-dev libxcb-util0-dev libxcb-randr0-dev libxcb-composite0-dev python3-xcbgen xcb-proto libxcb-image0-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-xkb-dev libxcb-xsudo rm-dev libxcb-cursor-dev libasound2-dev libpulse-dev libjsonsudo cpp-dev libmpdclient-dev libcurl4-openssl-dev libnl-genl-3-dev libuv1-devsudo apt install cmake cmake-data pkg-config python3-sphinx libcairo2-dev libxcb1-dev libxcb-util0-dev libxcb-randr0-dev libxcb-composite0-dev python3-xcbgen xcb-proto libxcb-image0-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-xkb-dev libxcb-xsudo rm-dev libxcb-cursor-dev libasound2-dev libpulse-dev libjsonsudo cpp-dev libmpdclient-dev libcurl4-openssl-dev libnl-genl-3-dev libuv1-dev
sudo apt install libuv1-dev libev
sudo apt install polybar

echo -e "${amarillo}[${rojo}*${amarillo}]${cian} Git clone del repositorio de yorkox0/autoBspwm"
git clone https://github.com/yorkox0/autoBspwm

echo -e "${amarillo}[${rojo}*${amarillo}]${cian} Ejecucion del main.py de yorkox0/autoBspwm"
python3 /home/carlos/git/clone/zsh-with-plugins-and-more/autoBspwm/main.py

echo -e "${amarillo}[${rojo}*${amarillo}]${cian} Copiando archivos de configuracion para polybar bspwm sxhkd picom"
git clone --depth=1 https://github.com/adi1090x/polybar-themes.git 
sudo chmod +x /home/carlos/git/clone/zsh-with-plugins-and-more/polybar-themes/setup.sh
/home/carlos/git/clone/zsh-with-plugins-and-more/polybar-themes/setup.sh

sudo cp -rf ./config/bspwm /home/carlos/.config/
sudo cp -rf ./config/sxhkd/sxhkdrc /home/carlos/.config/sxhkd/sxhkdrc
sudo rm -r /home/carlos/.wallpapers/wallpaper.jpg
sudo rm -r /home/carlos/.config/polybar/shapes
sudo cp -rf ./config/.wallpapers /home/carlos
sudo cp -rf ./config/polybar/shapes /home/carlos/.config/polybar/
sudo cp -rf ./config/polybar/polybar-themes/simple/shapes /home/carlos/.config/polybar

#Picom
mkdir /home/carlos/.config/picom
sudo cp -rf /home/carlos/git/clone/zsh-with-plugins-and-more/config/picom /home/carlos/.config

echo -e "${amarillo}[${rojo}*${amarillo}]${cian} Instalacion de paquetes zsh ranger xclip snapd tree"
sudo apt install zsh ranger xclip snapd tree
##Instalacion de visual studio code
#systemctl start snapd.service
#snap install --classic code

#Comandos wget
echo -e "${amarillo}[${rojo}*${amarillo}]${cian} Instalacion de bat lsd y descarga de la fuente de hack nerd fonts"
wget https://github.com/sharkdp/bat/releases/download/v0.19.0/bat_0.19.0_amd64.deb
wget https://github.com/Peltoche/lsd/releases/download/0.21.0/lsd_0.21.0_amd64.deb
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip 
sudo dpkg -i ./lsd_0.21.0_amd64.deb
sudo dpkg -i ./bat_0.19.0_amd64.deb
sudo rm ./lsd_0.21.0_amd64.deb
sudo rm ./bat_0.19.0_amd64.deb
#Comandos Git clone

echo -e "${amarillo}[${rojo}*${amarillo}]${cian} Clonacion de repositorios github powerlevel10k | plugins de zsh => zsh-autosuggestions y zsh-syntax-highlighting"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git /home/carlos/git/clone/zsh-with-plugins-and-more/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions /home/carlos/git/clone/zsh-with-plugins-and-more/plugins-zsh/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting /home/carlos/git/clone/zsh-with-plugins-and-more/plugins-zsh/zsh-syntax-highlighting

#Instalacion de la tipografia Hack nerd Fonts
sudo mv ./Hack.zip /usr/share/fonts

    echo -e "${amarillo}[${rojo}*${amarillo}]${cian} Moviendo archivos .p10k.zsh y .zshrc al directorio personal del usuario directorio de root y a al directorio /etc/skel"
mkdir /usr/share/zsh-p10k 
sudo cp -rf /home/carlos/git/clone/zsh-with-plugins-and-more/powerlevel10k /usr/share/zsh-p10k
sudo sudo cp -rf /home/carlos/git/clone/zsh-with-plugins-and-more/{.p10k.zsh,.zshrc} /etc/skel
sudo sudo cp -rf /home/carlos/git/clone/zsh-with-plugins-and-more/{.p10k.zsh,.zshrc} $HOME
sudo sudo cp -rf /home/carlos/git/clone/zsh-with-plugins-and-more/{.p10k.zsh,.zshrc} /root

echo -e "${amarillo}[${rojo}*${amarillo}]${cian} Instalacion de los plugins"
#Plugins ZSH
sudo cp -rf ./plugins-zsh /usr/share

echo -e "${amarillo}[${rojo}*${amarillo}]${cian} Cambio de terminal a los perfiles $USERNAME y root"
#Cambio de la tesudo rminal del usuario a zsh
usesudo rmod --shell /usr/bin/zsh $USERNAME
usesudo rmod --shell /usr/bin/zsh root

#Instalacion de fzf
echo -e "${amarillo}[${rojo}*${amarillo}]${cian} Instalacion de fzf"
git clone --depth 1 https://github.com/junegunn/fzf.git /home/carlos/.fzf
sudo cp -rf /home/carlos/.fzf /root
/root/.fzf/install
/etc/skel/.fzf/install
/home/carlos/.fzf/install

ln -s /home/carlos/.zshrc /root/.zshrc 
ln -s /home/carlos/.p10k.zsh /root/.p10k.zsh 
/home/carlos/git/clone/polybar-themes/setup.sh
#/etc/skel
sudo cp -rf /home/carlos/.fzf /etc/skel
sudo cp -rf /home/carlos/.config /etc/skel

echo -e "${amarillo}[${rojo}*${amarillo}]${cian} Configuracion del zsh a partir de unas configuraciones determinadas"
read -rp "Quieres una configuracion determinada si/no" respuesta
if [ "$respuesta" == "si" ]
then
    ./Themes.sh
else
    echo 'source /home/carlos/powerlevel10k/powerlevel10k.zsh-theme' >> /home/carlos/.zshrc
fi
sudo apt update && sudo apt upgrade