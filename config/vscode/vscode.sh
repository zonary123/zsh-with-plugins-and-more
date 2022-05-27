#!/bin/bash
systemctl start snapd.service
snap install code --classic 
sudo cp -rf ./settings.json $HOME/.config/Code/User
#====================================================#
#                       Upgrades                     #
#====================================================#
code --install-extension icrawl.discord-vscode
code --install-extension kevinkyang.auto-comment-blocks 
code --install-extension aaron-bond.better-comments 
code --install-extension ms-vsliveshare.vsliveshare
code --install-extension alefragnani.bookmarks
code --install-extension hookyqr.beautify
code --install-extension christian-kohler.path-intellisense
code --install-extension ionutvmi.path-autocomplete
code --install-extension mhutchie.git-graph
code --install-extension 2gua.rainbow-brackets
code --install-extension yandeu.five-server
code --install-extension redhat.vscode-yaml
code --install-extension redhat.vscode-xml

#code --install-extension Shan.code-settings-sync

#====================================================#
#                   GitHub Copilot                   #
#====================================================#
code --install-extension github.copilot

#====================================================#
#                       Colors                       #
#====================================================#
code --install-extension oderwat.indent-rainbow
code --install-extension naumovs.color-highlight
clear
#====================================================#
#                       bash                         #
#====================================================#
read -p "Desea extensiones para bash para scripts si/no" bash
if [[ "si" == "$bash" ]]
then
    code --install-extension designbyajay.bash-cli-snippets
    clear
fi

#====================================================#
#                       ssh                          #
#====================================================#
read -p "Desea extensiones para ssh si/no" ssh
if [[ "si" == "$ssh" ]]
then
    code --install-extension ms-vscode-remote.remote-ssh
    clear
fi

if [[ "si" == "$lua" ]]
then
read -p "Instalacion de Lua" lua

    code --install-extension sumneko.lua
    clear
fi
#====================================================#
#                       HTML                         #
#====================================================#
#read -p "Desea extensiones para HTML si/no" html
#if [[ "si" == "$html" ]]
#then
#    code --install-extension hwencc.html-tag-wrapper
#    code --install-extension bradlc.vscode-tailwindcss
#fi

#====================================================#
#                       CSS                          #
#====================================================#
#read -p "Desea extensiones para CSS si/no" css
#if [[ "si" == "$css" ]]
#then
#    code --install-extension pranaygp.vscode-css-peek
#    code --install-extension zignd.html-css-class-completion
#    code --install-extension ecmel.vscode-html-css
#fi

#====================================================#
#                       JS                           #
#====================================================#
#read -p "Desea extensiones para JS si/no" js
#if [[ "si" == "$js" ]]
#then
#    code --install-extension xabikos.javascriptsnippets
#fi


#====================================================#
#                       React                        #
#====================================================#
#read -p "Desea extensiones para REACT si/no" react
#if [[ "si" == "$react" ]]
#then
#    code --install-extension xabikos.ReactSnippets
#fi

#====================================================#
#                       Pàginas                      #
#====================================================#
read -p "Desea extensiones para Paginas web si/no" paginas
if [[ "si" == "$paginas" ]]
then
    code --install-extension xabikos.javascriptsnippets
    code --install-extension xabikos.ReactSnippets
    code --install-extension pranaygp.vscode-css-peek
    code --install-extension zignd.html-css-class-completion
    code --install-extension ecmel.vscode-html-css
    code --install-extension hwencc.html-tag-wrapper
    code --install-extension bradlc.vscode-tailwindcss
    clear
fi

#====================================================#
#                       CSV                          #
#====================================================#
read -p "Desea extensiones para csv si/no" csv
if [[ "si" == "$csv" ]]
then
    code --install-extension mechatroner.rainbow-csv
    clear
fi

#====================================================#
#                       Icons                        #
#====================================================#
code --install-extension pkief.material-icon-theme

#====================================================#
#                       Themes                       #
#====================================================#
code --install-extension whizkydee.material-palenight-theme
code --install-extension unthrottled.doki-theme
clear
read -p "Desea instalar mas themas" Themes
if [[ "si" == "$Themes" ]]
then
    code --install-extension monokai.theme-monokai-pro-vscode
    code --install-extension pawelgrzybek.gatito-theme
    clear
fi

clear
echo "Desea instalar rainglow (Rainglow es un thema con 320 tipos de themas de colores)"
read
if [[ "$rainglow" == "si" ]]
then
    code --install-extension daylerees.rainglow
    clear
    echo "Instalacion de extensiones terminada"
else
    clear
    echo "Instalacion de extensiones terminada"
fi

