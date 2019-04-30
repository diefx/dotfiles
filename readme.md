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
$ sudo echo "ZDOTDIR=~/.config/zsh" > /etc/zsh/zshenv 
```

__Create .config directory strucutre for our several configuration files__, get the file
from:
```bash
git clone https://github.com/diefx/dotfiles.git ~/.config.git
```

If for some reason your not clonning this repo, you can create the config structure

Move ths zshrc file to config directory
```bash
$ mkdir ~/.config/zsh
$ mv ~/.zshrc ~/.config/zsh/.zshrc
```

Create nvim config file
```bash
$ mkdir ~/.config/nvim && touch ~/.config/nvim/init.vim
```

Set git config in the right place
```bash
$ mkdir ~/.config/git && touch ~/.config/git/config
```

Cleaning up the system
-----------------------
Remove some unnecesari packages to keep our system as clean as possible
```bash
$ sudo pacman -R vi nvim nano
```

Install embedded utilities to work with microcontrollers
---------------------------
Since i'm an electrical engineer, i like to play arount with embedded systems
```bash
$ sudo pacman -S arm-none-eabi-gcc arm-none-eabi-newlib openocd
```

Tilling window manager system
------------------------------
First thing first, so let's install X11
```bash
$ sudo pacman  -S xorg-xserver xorg-xinit
```

Instal videodrivers (curretnly i'm running my system on VirtualBox
```bash
sudo pacman -S virtualbox-guest-modules-arch virtualbox-guest-utils
```

Create the following file
```bash
sudo nvim /etc/modules-load.d/virtualbox.conf 
inside he file write
vboxguest
vboxsf
vboxvideo
```

Then our windows manager
```bash
sudo pacman -S bspwm sxkhd
```

And something very important, the terminal, since we ned true color support to get more eyecandy we need urxvt true 
colors version wich is not included in the Arch official repositories, so...
```bash
git clone https://aur.archlinux.org/rxvt-unicode-truecolor.git
cd rxvt-unicode-truecolor
makepkg -si
cd .. 
rm -r rxvt-unicode-truecolor
```

