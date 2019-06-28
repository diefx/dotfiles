#Run X after login
if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx ~/.config/X11/.xinitrc
fi

#Add ruby executable to enviromental variable

