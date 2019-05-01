Rising the system
-----------------

After a fresh intallation of arch linux manjaro no gui enviroemtn of any kind niether
display server like X11, we sould proceede to install some useful binaries and also
make some tweeks that allos to keep in a good shape our configuration files and a very
clean home folder


Installation of several packages
--------------------------------
Install editor, versioning coding, etc..
```bash
$ sudo pacman -S neovim tree git
```

Configuration
-------------
Set our shell to look into the right directory for its configuration files
```bash
$ sudo nvim /etc/zsh/zshenv
# write the following line and save file
ZDOTDIR=~/.config/zsh 
```

Clone dotfiles from github
```bash
cd ~
git clone https://github.com/diefx/dotfiles.git ~/.config
```

Cleaning up the system
-----------------------
Remove some unnecesari packages to keep our system as clean as possible
```bash
$ sudo pacman -R vi nvim nano
```

Install embedded utilities to work with microcontrollers
--------------------------------------------------------
Since i'm an electrical engineer, i like to play arount with embedded systems
```bash
$ sudo pacman -S arm-none-eabi-gcc arm-none-eabi-newlib openocd
```

Tilling window manager system
------------------------------
First thing first, so let's install X11
```bash
$ sudo pacman  -S xorg-apps xorg-xserver xorg-xinit
```

Instal videodrivers (curretnly i'm running my system on VirtualBox
```bash
$ sudo pacman -S virtualbox-guest-modules-arch virtualbox-guest-utils
```

Then our windows manager nad also app launcher
```bash
$ sudo pacman -S bspwm sxkhd rofi
```

Before to continue lets install our AUR helper yay
```bash
$ git clone https://aur.archlinux.org/yay.git
$ cd yay
$ makepkg -si
$ cd ..
$ sudo rm -r yay 
```

Now we can instal two important compoenets, polybar and our terminal with true color support
```bash
$yay -Ss rxvt-unicode-trucolor polybar
```


