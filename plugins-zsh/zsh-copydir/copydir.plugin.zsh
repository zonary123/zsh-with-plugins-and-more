# Copies the pathname of the current directory to the system or X Windows clipboard
function copydir {
  emulate -L zsh
  echo $PWD > $HOME/pwd.txt
  xclip -i $HOME/pwd.txt
  print -n $PWD | clipcopy
}
function cdcopydir()
{
  cd $(xclip -o)
}