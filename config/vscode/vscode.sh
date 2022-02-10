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
code --install-extension Shan.code-settings-sync
#
#====================================================#
#                       Colors                       #
#====================================================#
code --install-extension oderwat.indent-rainbow
code --install-extension naumovs.color-highlight
#====================================================#
#                       bash                         #
#====================================================#
code --install-extension designbyajay.bash-cli-snippets

#====================================================#
#                       ssh                          #
#====================================================#
code --install-extension ms-vscode-remote.remote-ssh
#====================================================#
#                       HTML                         #
#====================================================#
code --install-extension hwencc.html-tag-wrapper
code --install-extension bradlc.vscode-tailwindcss
#====================================================#
#                       CSS                          #
#====================================================#
code --install-extension pranaygp.vscode-css-peek
code --install-extension zignd.html-css-class-completion
code --install-extension ecmel.vscode-html-css
#====================================================#
#                       JS                           #
#====================================================#
code --install-extension xabikos.javascriptsnippets
#====================================================#
#                       CSV                          #
#====================================================#
code --install-extension mechatroner.rainbow-csv
#====================================================#
#                       React                        #
#====================================================#
code --install-extension xabikos.ReactSnippets
#====================================================#
#                       Icons                        #
#====================================================#
code --install-extension pkief.material-icon-theme
#====================================================#
#                       Themes                       #
#====================================================#
code --install-extension whizkydee.material-palenight-theme
code --install-extension unthrottled.doki-theme
code --install-extension monokai.theme-monokai-pro-vscode
code --install-extension pawelgrzybek.gatito-theme

clear
echo "Desea instalar rainglow (Rainglow es un thema con 320 tipos de themas de colores)"
read
if [[ "$rainglow" == "si" ]]    # ← see 'man bash' for valid conditional statements.
then
    code --install-extension daylerees.rainglow
else
    echo "Instalacion de extensiones terminada"
fi
