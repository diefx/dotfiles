# set keyboard configuration to la-latin
setxkbmap -model pc104 -layout latam -variant deadtilde,dvorak -option grp:alt_shift_toggle

# pickup the xresource file from config directory
xrdb -I ~/.config/X11/.Xresources

# run tilling window manager
exec bspwm

