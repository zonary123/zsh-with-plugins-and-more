#========================================#
#               Colores                  #
#========================================#
export negro="\e[0;30m"
export grisoscuro="\e[1;30m"
export azul="\e[0;34m"
export celeste="\e[1;34m"
export verdeoscuro="\e[0;32m"
export verdeclaro="\e[1;32m"
export cian="\e[0;36m"
export verdeagua="\e[1;36m"
export rojo="\e[0;31m"
export rojoclaro="\e[1;31m"
export violeta="\e[0;35m"
export lila="\e[1;35m"
export marron="\e[0;33m"
export amarillo="\e[1;33m"
export grisclaro="\e[0;37m"
export blanco="\e[1;37m"

#========================================#
#            Fzf-theme                   #
#========================================#
export FZF_DEFAULT_OPTS='--color=fg:#f8f8f2,bg:#282a36,hl:#bd93f9 --color=fg+:#f8f8f2,bg+:#44475a,hl+:#bd93f9 --color=info:#ffb86c,prompt:#50fa7b,pointer:#ff79c6 --color=marker:#ff79c6,spinner:#ffb86c,header:#6272a4'

#========================================#
#                Start                   #
#========================================#

source /usr/share/zsh-p10k/powerlevel10k/powerlevel10k.zsh-theme
#
# Fix the Java Problem
export _JAVA_AWT_WM_NONREPARENTING=1

# Enable Powerlevel10k instant prompt. Should stay at the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
source /usr/share/zsh-p10k/powerlevel10k/powerlevel10k.zsh-theme

# Manual configuration

PATH=/root/.local/bin:/snap/bin:/usr/sandbox/:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:/usr/share/games:/usr/local/sbin:/usr/sbin:/sbin:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games

# Manual aliases
alias ll='lsd -alh --group-dirs=first'
alias la='lsd -a --group-dirs=first'
alias lla='lsd -lha --group-dirs=first'
alias ls='lsd -a --group-dirs=first'
alias lt='lsd --tree'
alias cat='bat'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Plugins
source /usr/share/plugins-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/plugins-zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/plugins-zsh/zsh-sudo/sudo.plugin.zsh
source /usr/share/plugins-zsh/zsh-copydir/copydir.plugin.zsh
source /usr/share/plugins-zsh/zsh-dirhistory/dirhistory.plugin.zsh
source /usr/share/plugins-zsh/zsh-history/history.plugin.zsh
source /usr/share/plugins-zsh/zsh-interactive-cd/zsh-interactive-cd.plugin.zsh
source /usr/share/plugins-zsh/zsh-vscode/vscode.plugin.zsh

#plugin aliases
source /usr/share/plugins-zsh/aliases.plugin.zsh
source /usr/share/plugins-zsh/nmap.plugin.zsh

#LSD colors comand ls
source /usr/share/lsd/ls_colors.sh

#export LS_COLORS="$(vivid generate snazzy)"

#Cambiar LS_COLORS como tu quieras
#Secuencia 0;38;2;34;166;233 Los ultimos 3 digitos hacen referencia a los colores RGB
#Secuencia 0;38;2;34;166;233 Los 3 primeros digitos https://blog.desdelinux.net/cambiar-los-colores-del-comando-ls-en-linux/ informacion.
export LS_COLORS="cd=0;38;2;255;106;193;48;2;51;51;51:mi=0;38;2;0;0;0;48;2;255;92;87:mh=0:fi=0:bd=0;38;2;154;237;254;48;2;51;51;51:pi=0;38;2;0;0;0;48;2;87;199;255:ow=0:so=0;38;2;0;0;0;48;2;255;106;193:ex=1;38;2;255;92;87:do=0;38;2;0;0;0;48;2;255;106;193:rs=0:su=0:no=0:*~=0;38;2;102;102;102:st=0:ca=0:tw=0:sg=0:or=0;38;2;0;0;0;48;2;255;92;87:di=0;38;2;87;199;255:ln=0;38;2;255;106;193:*.h=0;38;2;90;247;142:*.z=4;38;2;154;237;254:*.p=0;38;2;90;247;142:*.t=0;38;2;90;247;142:*.m=0;38;2;90;247;142:*.d=0;38;2;90;247;142:*.c=0;38;2;90;247;142:*.r=0;38;2;90;247;142:*.a=1;38;2;255;92;87:*.o=0;38;2;102;102;102:*.gz=4;38;2;154;237;254:*.rs=0;38;2;90;247;142:*.sh=0;38;2;229;155;84:*.lo=0;38;2;102;102;102:*.kt=0;38;2;90;247;142:*.cr=0;38;2;90;247;142:*.jl=0;38;2;90;247;142:*.cc=0;38;2;90;247;142:*.gv=0;38;2;90;247;142:*.cs=0;38;2;97;177;230:*.as=0;38;2;90;247;142:*.bc=0;38;2;102;102;102:*.pl=0;38;2;90;247;142:*.pm=0;38;2;90;247;142:*.rb=0;38;2;90;247;142:*.fs=0;38;2;90;247;142:*.xz=4;38;2;154;237;254:*.ui=0;38;2;243;249;157:*.wv=0;38;2;255;180;223:*.la=0;38;2;102;102;102:*.hi=0;38;2;102;102;102:*.nb=0;38;2;90;247;142:*.go=0;38;2;90;247;142:*.md=0;38;2;243;249;157:*.mn=0;38;2;90;247;142:*.ts=0;38;2;90;247;142:*.py=0;38;2;90;247;142:*.bz=4;38;2;154;237;254:*.di=0;38;2;90;247;142:*.ko=1;38;2;255;92;87:*.ml=0;38;2;90;247;142:*.pp=0;38;2;90;247;142:*.hs=0;38;2;90;247;142:*.7z=4;38;2;154;237;254:*.cp=0;38;2;90;247;142:*.td=0;38;2;90;247;142:*.rm=0;38;2;255;180;223:*.hh=0;38;2;90;247;142:*.ll=0;38;2;90;247;142:*.ps=0;38;2;255;92;87:*.js=0;38;2;243;249;157:*.el=0;38;2;90;247;142:*.vb=0;38;2;90;247;142:*.ex=0;38;2;90;247;142:*css=0;38;2;90;247;142:*.so=1;38;2;255;92;87:*.bmp=0;38;2;255;180;223:*.svg=0;38;2;255;180;223:*.yml=0;38;2;83;245;125:*.mov=0;38;2;255;180;223:*.dot=0;38;2;90;247;142:*.flv=0;38;2;255;180;223:*.rst=0;38;2;243;249;157:*.kts=0;38;2;90;247;142:*.bin=4;38;2;154;237;254:*.bak=0;38;2;102;102;102:*.xlr=0;38;2;255;92;87:*.pyd=0;38;2;102;102;102:*.deb=4;38;2;154;237;254:*.iso=4;38;2;154;237;254:*.rar=0;38;2;174;93;243:*.com=1;38;2;255;92;87:*.bbl=0;38;2;102;102;102:*.mir=0;38;2;90;247;142:*.mli=0;38;2;90;247;142:*.mkv=0;38;2;255;180;223:*.ics=0;38;2;255;92;87:*.elm=0;38;2;90;247;142:*.eps=0;38;2;255;180;223:*.pgm=0;38;2;255;180;223:*.sql=0;38;2;34;166;233:*.odp=0;38;2;255;92;87:*.cpp=0;38;2;90;247;142:*.hxx=0;38;2;90;247;142:*.doc=0;38;2;255;92;87:*.def=0;38;2;90;247;142:*.asa=0;38;2;90;247;142:*hgrc=0;38;2;165;255;195:*.ilg=0;38;2;102;102;102:*.odt=0;38;2;255;92;87:*.wmv=0;38;2;255;180;223:*.wav=0;38;2;255;180;223:*.ttf=0;38;2;255;180;223:*.mid=0;38;2;255;180;223:*.pbm=0;38;2;255;180;223:*.fon=0;38;2;255;180;223:*.tmp=0;38;2;102;102;102:*.epp=0;38;2;90;247;142:*.tgz=4;38;2;154;237;254:*TODO=1:*.log=0;38;2;102;102;102:*.bib=0;38;2;243;249;157:*.rtf=0;38;2;255;92;87:*.tar=0;38;2;174;93;243:*.pyo=0;38;2;102;102;102:*.pod=0;38;2;90;247;142:*.exe=1;38;2;255;92;87:*.img=4;38;2;154;237;254:*.psd=0;38;2;255;180;223:*.sty=0;38;2;102;102;102:*.jpg=0;38;2;255;180;223:*.bag=4;38;2;154;237;254:*.cgi=0;38;2;90;247;142:*.c++=0;38;2;90;247;142:*.dmg=4;38;2;154;237;254:*.m4a=0;38;2;255;180;223:*.dll=1;38;2;255;92;87:*.erl=0;38;2;90;247;142:*.tsx=0;38;2;90;247;142:*.dox=0;38;2;165;255;195:*.h++=0;38;2;90;247;142:*.csx=0;38;2;90;247;142:*.tml=0;38;2;243;249;157:*.sxw=0;38;2;255;92;87:*.sbt=0;38;2;90;247;142:*.pro=0;38;2;165;255;195:*.out=0;38;2;102;102;102:*.cfg=0;38;2;243;249;157:*.exs=0;38;2;90;247;142:*.ppt=0;38;2;255;92;87:*.inl=0;38;2;90;247;142:*.mp4=0;38;2;255;180;223:*.ind=0;38;2;102;102;102:*.ps1=0;38;2;90;247;142:*.bz2=4;38;2;154;237;254:*.ltx=0;38;2;90;247;142:*.ods=0;38;2;255;92;87:*.fsx=0;38;2;90;247;142:*.pid=0;38;2;102;102;102:*.tcl=0;38;2;90;247;142:*.csv=0;38;2;243;249;157:*.clj=0;38;2;90;247;142:*.vim=0;38;2;90;247;142:*.fnt=0;38;2;255;180;223:*.bat=1;38;2;255;92;87:*.htm=0;33;2;243;249;157:*.kex=0;38;2;255;92;87:*.tex=0;38;2;90;247;142:*.txt=0;38;2;243;249;157:*.php=0;38;2;90;247;142:*.mpg=0;38;2;255;180;223:*.dpr=0;38;2;90;247;142:*.bst=0;38;2;243;249;157:*.cxx=0;38;2;90;247;142:*.git=0;38;2;102;102;102:*.aux=0;38;2;102;102;102:*.nix=0;38;2;243;249;157:*.ini=0;38;2;243;249;157:*.idx=0;38;2;102;102;102:*.gvy=0;38;2;90;247;142:*.pkg=4;38;2;154;237;254:*.pyc=0;38;2;102;102;102:*.toc=0;38;2;102;102;102:*.ogg=0;38;2;255;180;223:*.swp=0;38;2;102;102;102:*.zst=4;38;2;154;237;254:*.swf=0;38;2;255;180;223:*.vob=0;38;2;255;180;223:*.inc=0;38;2;90;247;142:*.jar=4;38;2;154;237;254:*.ppm=0;38;2;255;180;223:*.rpm=4;38;2;154;237;254:*.otf=0;38;2;255;180;223:*.tif=0;38;2;255;180;223:*.htc=0;38;2;90;247;142:*.m4v=0;38;2;255;180;223:*.aif=0;38;2;255;180;223:*.fls=0;38;2;102;102;102:*.sxi=0;38;2;255;92;87:*.xmp=0;38;2;243;249;157:*.lua=0;38;2;90;247;142:*.gif=0;38;2;255;180;223:*.awk=0;38;2;90;247;142:*.mp3=0;38;2;255;180;223:*.zip=0;38;2;174;93;243:*.xls=0;38;2;255;92;87:*.bsh=0;38;2;90;247;142:*.arj=4;38;2;154;237;254:*.pas=0;38;2;90;247;142:*.apk=4;38;2;154;237;254:*.ico=0;38;2;255;180;223:*.xml=0;38;2;243;249;157:*.xcf=0;38;2;255;180;223:*.wma=0;38;2;255;180;223:*.tbz=4;38;2;154;237;254:*.avi=0;38;2;255;180;223:*.fsi=0;38;2;90;247;142:*.pdf=0;38;2;255;92;87:*.blg=0;38;2;102;102;102:*.pps=0;38;2;255;92;87:*.zsh=0;38;2;90;247;142:*.bcf=0;38;2;102;102;102:*.vcd=4;38;2;154;237;254:*.png=0;38;2;255;180;223:*.hpp=0;38;2;90;247;142:*.ipp=0;38;2;90;247;142:*.diff=0;38;2;90;247;142:*.tiff=0;38;2;255;180;223:*.html=0;33;2;243;249;157:*.conf=0;38;2;243;249;157:*.pptx=0;38;2;255;92;87:*.tbz2=4;38;2;154;237;254:*.psm1=0;38;2;90;247;142:*.bash=0;38;2;90;247;142:*.opus=0;38;2;255;180;223:*.lisp=0;38;2;90;247;142:*.lock=0;38;2;102;102;102:*.mpeg=0;38;2;255;180;223:*.yaml=0;38;2;83;245;125:*.xlsx=0;38;2;255;92;87:*.make=0;38;2;165;255;195:*.json=0;38;2;243;249;157:*.webm=0;38;2;255;180;223:*.flac=0;38;2;255;180;223:*.epub=0;38;2;255;92;87:*.jpeg=0;38;2;255;180;223:*.less=0;38;2;90;247;142:*.dart=0;38;2;90;247;142:*.psd1=0;38;2;90;247;142:*.docx=0;38;2;255;92;87:*.purs=0;38;2;90;247;142:*.h264=0;38;2;255;180;223:*.toml=0;38;2;243;249;157:*.fish=0;38;2;90;247;142:*.java=0;38;2;90;247;142:*.hgrc=0;38;2;165;255;195:*.rlib=0;38;2;102;102;102:*.orig=0;38;2;102;102;102:*.shtml=0;38;2;243;249;157:*.cabal=0;38;2;90;247;142:*.class=0;38;2;102;102;102:*README=0;38;2;40;42;54;48;2;243;249;157:*passwd=0;38;2;243;249;157:*.toast=4;38;2;154;237;254:*shadow=0;38;2;243;249;157:*.xhtml=0;38;2;243;249;157:*.patch=0;38;2;90;247;142:*.mdown=0;38;2;243;249;157:*.cache=0;38;2;102;102;102:*.ipynb=0;38;2;90;247;142:*.cmake=0;38;2;165;255;195:*.dyn_o=0;38;2;102;102;102:*.swift=0;38;2;90;247;142:*.scala=0;38;2;90;247;142:*.config=0;38;2;243;249;157:*INSTALL=0;38;2;40;42;54;48;2;243;249;157:*.dyn_hi=0;38;2;102;102;102:*.matlab=0;38;2;90;247;142:*.gradle=0;38;2;90;247;142:*.groovy=0;38;2;90;247;142:*COPYING=0;38;2;153;153;153:*.ignore=0;38;2;165;255;195:*.flake8=0;38;2;165;255;195:*TODO.md=1:*LICENSE=0;38;2;153;153;153:*Doxyfile=0;38;2;165;255;195:*setup.py=0;38;2;165;255;195:*.desktop=0;38;2;243;249;157:*TODO.txt=1:*.gemspec=0;38;2;165;255;195:*Makefile=0;38;2;165;255;195:*.cmake.in=0;38;2;165;255;195:*README.md=0;38;2;40;42;54;48;2;243;249;157:*configure=0;38;2;165;255;195:*.fdignore=0;38;2;165;255;195:*.markdown=0;38;2;243;249;157:*COPYRIGHT=0;38;2;153;153;153:*.rgignore=0;38;2;165;255;195:*.kdevelop=0;38;2;165;255;195:*.DS_Store=0;38;2;102;102;102:*.gitconfig=0;38;2;165;255;195:*.localized=0;38;2;102;102;102:*SConscript=0;38;2;165;255;195:*CODEOWNERS=0;38;2;165;255;195:*README.txt=0;38;2;40;42;54;48;2;243;249;157:*.gitignore=0;38;2;165;255;195:*Dockerfile=0;38;2;243;249;157:*INSTALL.md=0;38;2;40;42;54;48;2;243;249;157:*.scons_opt=0;38;2;102;102;102:*SConstruct=0;38;2;165;255;195:*.travis.yml=0;38;2;90;247;142:*Makefile.in=0;38;2;102;102;102:*MANIFEST.in=0;38;2;165;255;195:*Makefile.am=0;38;2;165;255;195:*.gitmodules=0;38;2;165;255;195:*INSTALL.txt=0;38;2;40;42;54;48;2;243;249;157:*.synctex.gz=0;38;2;102;102;102:*LICENSE-MIT=0;38;2;153;153;153:*configure.ac=0;38;2;165;255;195:*.fdb_latexmk=0;38;2;102;102;102:*.applescript=0;38;2;90;247;142:*appveyor.yml=0;38;2;90;247;142:*CONTRIBUTORS=0;38;2;40;42;54;48;2;243;249;157:*.clang-format=0;38;2;165;255;195:*CMakeLists.txt=0;38;2;165;255;195:*CMakeCache.txt=0;38;2;102;102;102:*LICENSE-APACHE=0;38;2;153;153;153:*.gitattributes=0;38;2;165;255;195:*CONTRIBUTORS.md=0;38;2;40;42;54;48;2;243;249;157:*.sconsign.dblite=0;38;2;102;102;102:*requirements.txt=0;38;2;165;255;195:*CONTRIBUTORS.txt=0;38;2;40;42;54;48;2;243;249;157:*package-lock.json=0;38;2;102;102;102:*.CFUserTextEncoding=0;38;2;102;102;102:*.jsx=0;38;2;116;193;236:*.css=0;38;2;97;177;230:*zshrc=0;38;2;193;25;83:*bash=0;38;2;193;25;83:*bashrc=0;38;2;193;25;83"
# Functions
function mkt(){
	mkdir {nmap,content,exploits,scripts}
}

# Extract nmap information
function extractPorts(){
	ports="$(cat $1 | grep -oP '\d{1,5}/open' | awk '{print $1}' FS='/' | xargs | tr ' ' ',')"
	ip_address="$(cat $1 | grep -oP '\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}' | sort -u | head -n 1)"
	echo -e "\n[*] Extracting information...\n" > extractPorts.tmp
	echo -e "\t[*] IP Address: $ip_address"  >> extractPorts.tmp
	echo -e "\t[*] Open ports: $ports\n"  >> extractPorts.tmp
	echo $ports | tr -d '\n' | xclip -sel clip
	echo -e "[*] Ports copied to clipboard\n"  >> extractPorts.tmp
	cat extractPorts.tmp; rm extractPorts.tmp
}

# Set 'man' colors
function man() {
    env \
    LESS_TERMCAP_mb=$'\e[01;31m' \
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    man "$@"
}

# fzf improvement
function fzf-lovely(){

	if [ "$1" = "h" ]; then
		fzf -m --reverse --preview-window down:20 --preview '[[ $(file --mime {}) =~ binary ]] &&
 			echo {} is a binary file ||
	                (bat --style=numbers --color=always {} ||
	                highlight -O ansi -l {} ||
	                coderay {} ||
	                rougify {} ||
	            	cat {}) 2> /dev/null | head -500'

	else
	        fzf -m --preview '[[ $(file --mime {}) =~ binary ]] &&
	                        echo {} is a binary file ||
	                        (bat --style=numbers --color=always {} ||
	                        highlight -O ansi -l {} ||
	                        coderay {} ||
	                        rougify {} ||
	                        cat {}) 2> /dev/null | head -500'
	fi
}

function rmk(){
	scrub -p dod $1
	shred -zun 10 -v $1
}

function makest(){
	cp ~/git/clone/zsh-with-plugins-and-more/config/script/colores.sh $PWD/$1
}

# Finalize Powerlevel10k instant prompt. Should stay at the bottom of ~/.zshrc.
#(( ! ${+functions[p10k-instant-prompt-finalize]} )) || p10k-instant-prompt-finalize
