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
usuario=$USERNAME
export directorio=$PWD
chown $USER:$USER -R $directorio

read -p "Quieres una actualizacion a full: " full
if [[ "$full" == "si" ]] || [[ "$full" == "S" ]] || [[ "$full" == "Y" ]] || [[ "$full" == "Si" ]] || [[ "$full" == "SI" ]]    # ← see 'man bash' for valid conditional statements.
then
    sudo apt full-upgrade -y
else
    clear
fi

clear
sudo chmod 777 -R $directorio/config
sudo chmod -R 755 $directorio
echo -e "${amarillo}[${rojo}*${amarillo}]${cian} Instalacion de paquetes "
sudo apt update && sudo apt upgrade 
sudo apt install libev-dev screenfetch build-essential git vim xcb libxcb-util0-dev libxcb-ewmh-dev libxcb-randr0-dev libxcb-icccm4-dev libxcb-keysyms1-dev libxcb-xinerama0-dev libasound2-dev libxcb-xtest0-dev libxcb-shape0-dev -y
sudo apt install libuv1-dev libev polybar slim libpam0g-dev libxrandr-dev libfreetype6-dev libimlib2-dev libxft-dev cmake cmake-data pkg-config python3-sphinx libcairo2-dev libxcb1-dev libxcb-util0-dev libxcb-randr0-dev libxcb-composite0-dev python3-xcbgen xcb-proto libxcb-image0-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-xkb-dev libxcb-xsudo rm-dev libxcb-cursor-dev libasound2-dev libpulse-dev libjsonsudo cpp-dev libmpdclient-dev libcurl4-openssl-dev libnl-genl-3-dev libuv1-dev -y
sudo apt update -y && sudo apt upgrade -y 
clear

echo -e "${amarillo}[${rojo}*${amarillo}]${cian} Git clone del repositorio de yorkox0/autoBspwm"
git clone https://github.com/yorkox0/autoBspwm
git clone https://github.com/PrayagS/polybar-spotify
sudo apt update -y && sudo apt upgrade -y 
clear

echo -e "${amarillo}[${rojo}*${amarillo}]${cian} Ejecucion del main.py de yorkox0/autoBspwm"
cd $directorio/autoBspwm
python3 $directorio/autoBspwm/main.py
cd $directorio
clear

echo -e "${amarillo}[${rojo}*${amarillo}]${cian} Copiando archivos de configuracion para polybar bspwm sxhkd picom"
git clone --depth=1 https://github.com/adi1090x/polybar-themes.git 
sudo chmod +x $directorio/polybar-themes/setup.sh
$directorio/polybar-themes/setup.sh

sudo cp -fr $directorio/config/bspwm ~/.config
sudo cp -fr $directorio/config/sxhkd ~/.config
sudo rm -r ~/.wallpapers/wallpaper.jpg
sudo rm -r ~/.config/polybar/shapes
sudo cp -fr $directorio/config/.wallpapers ~/
sudo cp -fr $directorio/config/polybar/polybar-themes/simple/shapes ~/.config/polybar

#Picom
sudo mkdir ~/.config/picom
sudo cp -fr $directorio/config/picom ~/.config
clear

echo -e "${amarillo}[${rojo}*${amarillo}]${cian} Instalacion de paquetes zsh ranger xclip snapd tree"
sudo apt install zsh ranger xclip snapd tree pip htop gedit gnome-terminal qterminal zeal
clear

#Comandos wget
echo -e "${amarillo}[${rojo}*${amarillo}]${cian} Instalacion de bat, lsd, vivid, fd y descarga de la fuente de hack nerd fonts"
cd $directorio
sudo wget https://github.com/sharkdp/bat/releases/download/v0.20.0/bat_0.20.0_amd64.deb
sudo wget https://github.com/Peltoche/lsd/releases/download/0.21.0/lsd_0.21.0_amd64.deb
sudo wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip 
sudo wget https://github.com/sharkdp/vivid/releases/download/v0.8.0/vivid_0.8.0_amd64.deb
sudo wget https://github.com/sharkdp/fd/releases/download/v8.3.2/fd_8.3.2_amd64.deb
sudo wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip
sudo dpkg -i ./vivid_0.8.0_amd64.deb
sudo dpkg -i ./lsd_0.21.0_amd64.deb
sudo dpkg -i ./bat_0.20.0_amd64.deb
sudo dpkg -i ./fd_8.3.2_amd64.deb
sudo rm ./lsd_0.21.0_amd64.deb
sudo rm ./bat_0.20.0_amd64.deb
sudo rm ./vivid_0.8.0_amd64.deb
sudo rm ./fd_8.3.2_amd64.deb

#Instalacion de colores de lsd
sudo chmod -R +x /usr/share/lsd
sudo mkdir -p /usr/share/lsd
sudo cp $directorio/config/lsd/ls_colors.sh /usr/share/lsd
clear

#Comandos Git clone
echo -e "${amarillo}[${rojo}*${amarillo}]${cian} Clonacion de repositorios github powerlevel10k || plugins de zsh => zsh-autosuggestions y zsh-syntax-highlighting "
cd $directorio
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $directorio
git clone https://github.com/zsh-users/zsh-autosuggestions $directorio/plugins-zsh/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting $directorio/plugins-zsh/zsh-syntax-highlighting

#Instalacion de la tipografia Hack nerd Fonts
sudo mkdir /usr/share/fonts/Hack
sudo mkdir /usr/share/fonts/Firacode
sudo mv $directorio/Hack.zip /usr/share/fonts/Hack
sudo mv $directorio/FiraCode.zip /usr/share/fonts/Firacode
cd /usr/share/fonts/Hack
sudo unzip Hack.zip
cd /usr/share/fonts/Firacode
sudo unzip FiraCode.zip
clear

echo -e "${amarillo}[${rojo}*${amarillo}]${cian} Moviendo archivos .p10k.zsh y .zshrc al directorio personal del usuario directorio de root y a al directorio /etc/skel"
cd $directorio
sudo mkdir /usr/share/zsh-p10k 
sudo cp -fr $directorio/powerlevel10k /usr/share/zsh-p10k
sudo cp -fr $directorio/{.p10k.zsh,.zshrc,.bashrc} /etc/skel
sudo cp -fr $directorio/{.p10k.zsh,.zshrc,.bashrc} ~
sudo cp -fr $directorio/{.p10k.zsh,.zshrc,.bashrc} /root
clear

echo -e "${amarillo}[${rojo}*${amarillo}]${cian} Instalacion de los plugins"
#Plugins ZSH
sudo cp -fr $directorio/plugins-zsh /usr/share
clear

echo -e "${amarillo}[${rojo}*${amarillo}]${cian} Cambio de terminal a los perfiles $USER y root"
#Cambio de la tesudo rminal del usuario a zsh
sudo usermod --shell /usr/bin/zsh $USER
sudo usermod --shell /usr/bin/zsh root
clear

#Instalacion theme rofi
git clone https://github.com/dracula/rofi
cp rofi/theme/config1.rasi ~/.config/rofi/config.rasi

#Instalacion de fzf
echo -e "${amarillo}[${rojo}*${amarillo}]${cian} Instalacion de fzf"
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
sudo cp -fr ~/.fzf /root
/root/.fzf/install
/etc/skel/.fzf/install
~/.fzf/install

sudo ln -sf ~/.zshrc /root/.zshrc
sudo ln -sf ~/.p10k.zsh /root/.p10k.zsh
sudo chmod -R 777 ~/.config/polybar
sudo cp -fr $directorio/config/sxhkd ~/.config
sudo cp -fr $directorio/config/polybar/polybar-themes/simple/shapes ~/.config/polybar
sudo cp -fr $directorio/config/polybar/polybar-themes/simple/shapes ~/.config/polybar
sudo chmod -R 777 ~/.config/polybar
#/etc/skel
sudo cp -fr ~/.fzf /etc/skel
sudo cp -fr ~/.config /etc/skel
clear
sudo chmod 766 -R $directorio/config

cp $directorio/.zshrc ~
cp $directorio/.p10k.zsh ~
clear

sudo apt update && sudo apt upgrade
clear

##Instalacion de visual studio codes
echo -e "${amarillo}[${rojo}*${amarillo}]${cian} Desea instalar Visual studio code: "
read code
if [[ "$code" == "si" ]] || [[ "$code" == "S" ]] || [[ "$code" == "Y" ]] || [[ "$code" == "Si" ]] || [[ "$code" == "SI" ]]
then
    sudo chmod -R 777 ./config/script
    sudo mkdir ~/scripts
    sudo cp $directorio/config/script/snap.sh ~/scripts
    sudo chmod 777 /etc/crontab
    sudo chmod +x /home/$USER/scripts/snap.sh
    sudo /home/$USER/scripts/snap.sh
    if [[ "@reboot root $HOME/scripts/snap.sh" == $(sudo cat /etc/crontab || grep "@reboot root $HOME/scripts/snap.sh") ]]
    then
        echo "Ya esta escrito en crontab"
    else
        echo "@reboot root $HOME/scripts/snap.sh" >> /etc/crontab
    fi
    sudo chmod 644 /etc/crontab
    sudo systemctl restart snapd.service
    sudo snap install --classic code
    sudo $directorio/config/script/snap.sh
    code .
    $directorio/config/vscode/vscode.sh
    clear
fi
clear

echo -e "${amarillo}[${rojo}*${amarillo}]${cian} Desea instalar gitkraken: "
read gitkraken
if [[ "$gitkraken" == "si" ]] || [[ "$gitkraken" == "S" ]] || [[ "$gitkraken" == "Y" ]] || [[ "$gitkraken" == "Si" ]] || [[ "$gitkraken" == "SI" ]]
then
    sudo snap install gitkraken --classic
    clear
fi
clear

echo -e "${amarillo}[${rojo}*${amarillo}]${cian} Se descargaran por debajo de 100MB de espacio de imagenes de fondos de pantalla"
echo -e "${amarillo}[${rojo}*${amarillo}]${cian} Desea descargar imagenes de fondo de pantalla: "
read wallpapers
if [[ "$wallpapers" == "si" ]] || [[ "$wallpapers" == "S" ]] || [[ "$wallpapers" == "Y" ]] || [[ "$wallpapers" == "Si" ]] || [[ "$wallpapers" == "SI" ]]
then
    sudo chmod 777 $directorio/config/script/imagenes.sh
    $directorio/config/script/Imagenes.sh
    sudo chmod -R 755 ~/.wallpapers
    clear
fi

clear
echo -e "${amarillo}[${rojo}*${amarillo}]${cian} Desea instalar spotify: "
read spotify
if [[ "$spotify" == "si" ]] || [[ "$spotify" == "S" ]] || [[ "$spotify" == "Y" ]] || [[ "$spotify" == "Si" ]] || [[ "$spotify" == "SI" ]]
then
    sudo systemctl restart snapd
    sudo snap install spotify
    sudo pip3 install meson
    sudo apt install playerctl
    #instalacion zscroll
    git clone https://github.com/noctuid/zscroll
    cd zscroll
    sudo python3 setup.py install
    cd $directorio
    clear
fi
clear
echo -e "${amarillo}[${rojo}*${amarillo}]${cian} Desea instalar Servicios de servidor: "
read Servicios
if [[ "$Servicios" == "si" ]] || [[ "$Servicios" == "S" ]] || [[ "$Servicios" == "Y" ]] || [[ "$Servicios" == "Si" ]] || [[ "$Servicios" == "SI" ]]
then
    sudo chmod 777 $directorio/installs/services.sh
    $directorio/installs/services.sh
    clear
fi

clear
sudo ln -sfr $HOME /root/.zshrc


sudo chown -R root:root /usr/local/share/zsh/site-functions
#========================================#
#               VIEW                     #
#========================================#
#https://github.com/ryanoasis/powerline-extra-symbols
#========================================#
#              FINISH                    #
#========================================#
cd /usr/share/fonts
sudo unzip Hack.zip
sudo unzip FiraCode.zip

clear
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim
mv ~/.config/nvim ~/.config/NVIM.BAK
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
sudo cp -rf $directorio/config/nvim ~/.config/
git clone https://github.com/github/copilot.vim.git \
  ~/.config/nvim/pack/github/start/copilot.vim
nvim +'hi NormalFloat guibg=#1e222a' +PackerSync

#nodejs
# Using Ubuntu
curl -fsSL https://deb.nodesource.com/setup_17.x | sudo -E bash -
sudo apt-get install -y nodejs

# Using Debian, as root
curl -fsSL https://deb.nodesource.com/setup_17.x | bash -
apt-get install -y nodejs

sudo cp -rf ~/.config/nvim /root/.config
#git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
#git clone https://github.com/github/copilot.vim.git \  ~/.config/nvim/pack/github/start/copilot.vim
sudo nvim +'hi NormalFloat guibg=#1e222a' +PackerSync

nvim +Copilot Setup

echo -e "${azul} desea reiniciar el ordenador"
read reboot
if (( "$reboot" == "si" ))    # ← see 'man bash' for valid conditional statements.
then
    reboot
else
    clear
    echo -e "${verde}La instalacion se hizo correctamente."
fi

