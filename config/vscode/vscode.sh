#!/bin/bash
systemctl start snapd.service
snap install --classic code
sudo cp -rf ~/git/clone/zsh-with-plugins-and-more/config/vscode/settings.json $HOME/.config/Code/User
#====================================================#
#                       Upgrades                     #
#====================================================#
code --install-extension icrawl.discord-vscode
code --install-extension kevinkyang.auto-comment-blocks 
code --install-extension aaron-bond.better-comments 
code --install-extension ms-vsliveshare.vsliveshare
code --install-extension ms-vsliveshare.vsliveshare-audio
code --install-extension alefragnani.bookmarks
code --install-extension hookyqr.beautify
code --install-extension christian-kohler.path-intellisense
code --install-extension ionutvmi.path-autocomplete
code --install-extension mhutchie.git-graph
#code --install-extension Shan.code-settings-sync

#====================================================#
#                       Colors                       #
#====================================================#
code --install-extension oderwat.indent-rainbow
code --install-extension naumovs.color-highlight

#====================================================#
#                       bash                         #
#====================================================#
read -p "Desea extensiones para bash para scripts si/no" bash
if [[ "si" == "$bash" ]]
then
    code --install-extension designbyajay.bash-cli-snippets
fi

#====================================================#
#                       ssh                          #
#====================================================#
read -p "Desea extensiones para ssh si/no" ssh
if [[ "si" == "$ssh" ]]
then
    code --install-extension ms-vscode-remote.remote-ssh
fi

#====================================================#
#                       HTML                         #
#====================================================#
read -p "Desea extensiones para HTML si/no" html
if [[ "si" == "$html" ]]
then
    code --install-extension hwencc.html-tag-wrapper
    code --install-extension bradlc.vscode-tailwindcss
fi

#====================================================#
#                       CSS                          #
#====================================================#
read -p "Desea extensiones para CSS si/no" css
if [[ "si" == "$css" ]]
then
    code --install-extension pranaygp.vscode-css-peek
    code --install-extension zignd.html-css-class-completion
    code --install-extension ecmel.vscode-html-css
fi

#====================================================#
#                       JS                           #
#====================================================#
read -p "Desea extensiones para JS si/no" js
if [[ "si" == "$js" ]]
then
    code --install-extension xabikos.javascriptsnippets
fi

#====================================================#
#                       CSV                          #
#====================================================#
read -p "Desea extensiones para csv si/no" csv
if [[ "si" == "$csv" ]]
then
    code --install-extension mechatroner.rainbow-csv
fi

#====================================================#
#                       React                        #
#====================================================#
read -p "Desea extensiones para REACT si/no" react
if [[ "si" == "$react" ]]
then
    code --install-extension xabikos.ReactSnippets
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
read -p "Desea instalar mas themas" Themes
if [[ "si" == "$Themes" ]]
then
    code --install-extension monokai.theme-monokai-pro-vscode
    code --install-extension pawelgrzybek.gatito-theme
fi

clear
echo "Desea instalar rainglow (Rainglow es un thema con 320 tipos de themas de colores)"
read
if [[ "$rainglow" == "si" ]]
then
    code --install-extension daylerees.rainglow
else
    echo "Instalacion de extensiones terminada"
fi
