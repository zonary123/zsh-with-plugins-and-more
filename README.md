# zsh with more things
Esto es una instalacion de fzf bat lsd ranger zsh bspwm sxkhd polybar, etc... automaticamente con una configuracion prehecha.
Los archivos de zsh y los plugins de zsh se envian a una carpeta en el directorio /usr/share/zsh-plugins y la configuracion de powerlevel10k y de zsh se envian a la carpeta /etc/skel . El tema de powerlevel10k se envia a una carpeta que se crea en la ubicacion /usr/share/zsh-p10k/ . Si quisieras cambiar el tema de los zsh tendrias que hacer la instalacion de powerlevel10k manualmente y mover los archivos que crea powerlevel10k en el carpeta personal del usuario y moverlos en la ubicacion /usr/share/zsh-p10k/ .

Tambien se instalara unas tipografias para la terminal. Tendras que cambiar la tipografia de la terminal a hack nerd fonts
## Install
```ini
  mkdir ~/git
  mkdir ~/git/clone
  git clone https://github.com/zonary123/zsh-with-plugins-and-more
  cd ~/git/clone/zsh-with-plugins-and-more
  sudo ./instalation.sh
```
## Instalacion al terminar
![](src/img/linux.png)
## Inslatacion de bspwm sxhkd automatico
- [config de s4vitar](https://github.com/yorkox0/autoBspwm)
- [polybar-themes](https://github.com/adi1090x/polybar-themes)
## Links de cada cosa.
- [Powerlevel10k](https://github.com/romkatv/powerlevel10k)
- [fzf](https://github.com/junegunn/fzf)
- [lsd](https://github.com/Peltoche/lsd)
- [bat](https://github.com/sharkdp/bat)
## Tipografia
La tipografia se instala sola pero tienes que cambiarla manualmente en la terminal.Esto es para poder ver los iconos y las demas cosas y que no veas una terminal con simbolos raros.

- [Hack nerd Fonts](https://www.nerdfonts.com/#home)

## Plugins zsh

- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [zsh-copydir](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/copydir)
- [zsh-dirhistory](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/dirhistory)
- [zsh-history](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/history)
- [zsh-interactive-cd](https://github.com/changyuheng/zsh-interactive-cd)
- [zsh-sudo](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/sudo)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- [zsh-vscode](https://github.com/valentinocossar/vscode)







