#!/bin/bash
if [ "$USERNAME" == "root" ] 
then
    #Instalacion de zsh
apt install zsh ranger

#Comandos wget
wget https://github.com/sharkdp/bat/releases/download/v0.19.0/bat_0.19.0_amd64.deb
wget https://github.com/Peltoche/lsd/releases/download/0.21.0/lsd_0.21.0_amd64.deb
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip 
dpkg -i ./lsd_0.21.0_amd64.deb ./bat_0.19.0_amd64.deb

#Comandos Git clone

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ./powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ./plugins-zsh/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ./plugins-zsh/zsh-syntax-highlighting

#Instalacion de la tipografia Hack nerd Fonts
mv ./Hack.zip /usr/share/fonts
unzip /usr/share/fonts/Hack.zip

mkdir /usr/share/zsh-p10k 
cp -r ./powerlevel10k /usr/share/zsh-p10k
#sudo cp -r ./{.p10k.zsh,.zshrc} /etc/skel
#sudo cp -r ./{.p10k.zsh,.zshrc} $HOME
#sudo cp -r ./{.p10k.zsh,.zshrc} /root

#Plugins ZSH
cp -r plugins-zsh /usr/share

#Cambio de la terminal del usuario a zsh
usermod --shell /usr/bin/zsh user
usermod --shell /usr/bin/zsh "$USERNAME"

#Instalacion de fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

ln -s /root/.zshrc .zshrc 
ln -s /root/.p10k.zsh .p10k.zsh 

read -rp "Quieres una configuracion determinada si/no" respuesta
if [ "$respuesta" == "si" ]
then
    ./Themes.sh
else
    echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc
fi

else
    #Instalacion de zsh
sudo apt install zsh ranger

#Comandos wget
wget https://github.com/sharkdp/bat/releases/download/v0.19.0/bat_0.19.0_amd64.deb
wget https://github.com/Peltoche/lsd/releases/download/0.21.0/lsd_0.21.0_amd64.deb
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip 
sudo dpkg -i ./lsd_0.21.0_amd64.deb ./bat_0.19.0_amd64.deb

#Comandos Git clone

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ./powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ./plugins-zsh/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ./plugins-zsh/zsh-syntax-highlighting

#Instalacion de la tipografia Hack nerd Fonts
sudo mv ./Hack.zip /usr/share/fonts
sudo unzip /usr/share/fonts/Hack.zip

sudo mkdir /usr/share/zsh-p10k 
sudo cp -r ./powerlevel10k /usr/share/zsh-p10k
#sudo cp -r ./{.p10k.zsh,.zshrc} /etc/skel
#sudo cp -r ./{.p10k.zsh,.zshrc} $HOME
#sudo cp -r ./{.p10k.zsh,.zshrc} /root

#Plugins ZSH
sudo cp -r plugins-zsh /usr/share

#Cambio de la terminal del usuario a zsh
sudo usermod --shell /usr/bin/zsh root
sudo usermod --shell /usr/bin/zsh "$USERNAME"

#Instalacion de fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

sudo ln -s /root/.zshrc .zshrc 
sudo ln -s /root/.p10k.zsh .p10k.zsh 

read -rp "Quieres una configuracion determinada si/no" respuesta
if [ "$respuesta" == "si" ]
then
    ./Themes.sh
else
    echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
fi

fi