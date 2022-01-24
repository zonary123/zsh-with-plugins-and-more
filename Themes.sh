#!/bin/bash
echo "Este script te hace elegir algun tema para zsh. Solo cambia el tema del usuario que lo ejecuta"
read -rp "Quieres un tema y no el predefinido responde con S o N: " respuesta
if [ "S" == "$respuesta" ]
then
    read -rp "El tema quieres que sea oscuro o rainbow? " Tema
    if [ "oscuro" == "$Tema" ]
    then
        read -rp "Elije el numero de Tema del 1-4: " dark
        if [ "1" == "$dark" ] 
        then
            sudo cp -r ./config-p10k/dark/1/{.p10k.zsh,.zshrc} $HOME
            sudo cp -r ./config-p10k/dark/1/{.p10k.zsh,.zshrc} /etc/skel
            sudo cp -r ./config-p10k/dark/1/{.p10k.zsh,.zshrc} /root
        elif [ "2" == "$dark" ] 
        then
            sudo cp -r ./config-p10k/dark/2/{.p10k.zsh,.zshrc} $HOME
            sudo cp -r ./config-p10k/dark/2/{.p10k.zsh,.zshrc} /etc/skel
            sudo cp -r ./config-p10k/dark/2/{.p10k.zsh,.zshrc} /root
        elif [ "3" == "$dark" ] 
        then
            sudo cp -r ./config-p10k/dark/3/{.p10k.zsh,.zshrc} $HOME
            sudo cp -r ./config-p10k/dark/3/{.p10k.zsh,.zshrc} /etc/skel
            sudo cp -r ./config-p10k/dark/3/{.p10k.zsh,.zshrc} /root
        elif [ "4" == "$dark" ] 
        then
            sudo cp -r ./config-p10k/dark/4/{.p10k.zsh,.zshrc} $HOME
            sudo cp -r ./config-p10k/dark/4/{.p10k.zsh,.zshrc} /etc/skel
            sudo cp -r ./config-p10k/dark/4/{.p10k.zsh,.zshrc} /root
        fi 
    else
        if [ "rainbow" == "$Tema" ]
        then
        read -p "Elije el numero de Tema del 1-4: " rainbow
        elif [ "1" == "$rainbow" ] 
        then
            sudo cp -r ./config-p10k/rainbow/1/{.p10k.zsh,.zshrc} $HOME
            sudo cp -r ./config-p10k/rainbow/1/{.p10k.zsh,.zshrc} /etc/skel
            sudo cp -r ./config-p10k/rainbow/1/{.p10k.zsh,.zshrc} /root
        elif [ "2" == "$rainbow" ] 
        then
            sudo cp -r ./config-p10k/rainbow/2/{.p10k.zsh,.zshrc} $HOME
            sudo cp -r ./config-p10k/rainbow/2/{.p10k.zsh,.zshrc} /etc/skel
            sudo cp -r ./config-p10k/rainbow/2/{.p10k.zsh,.zshrc} /root
        elif [ "3" == "$rainbow" ] 
        then
            sudo cp -r ./config-p10k/rainbow/3/{.p10k.zsh,.zshrc} $HOME
            sudo cp -r ./config-p10k/rainbow/3/{.p10k.zsh,.zshrc} /etc/skel
            sudo cp -r ./config-p10k/rainbow/3/{.p10k.zsh,.zshrc} /root
        elif [ "4" == "$rainbow" ] 
        then
            sudo cp -r ./config-p10k/rainbow/4/{.p10k.zsh,.zshrc} $HOME
            sudo cp -r ./config-p10k/rainbow/4/{.p10k.zsh,.zshrc} /etc/skel
            sudo cp -r ./config-p10k/rainbow/4/{.p10k.zsh,.zshrc} /root
        fi
    fi
else
    sudo cp -r ./{.p10k.zsh,.zshrc} $HOME
fi