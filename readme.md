Rising the system
-----------------

Fresh intallation of arch linux anarchy with the following packages:

```bash
base base-devel cpupower dialog grub linux-headers 
networkmanager screenfetch vim wget zsh
zsh-syntax-highlighting
```

Then we sould proceede to install some useful binaries and also
make some tweeks that allows to keep in a good shape our configuration files and a very
clean home folder

Installation of several packages
--------------------------------
Install editor, versioning coding, etc..
```bash
$ sudo pacman -S neovim tree git bspwm sxkhd rofi feh
```

Configuration
-------------
Set our shell to look into the right directory for its configuration files
```bash
$ sudo nvim /etc/zsh/zshenv
# write the following line and save file
ZDOTDIR=~/.config/zsh 
```

Cleaning up the system
-----------------------
Remove some unnecesari packages to keep our system as clean as possible
```bash
$ sudo pacman -R vi nvim nano
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
$yay -S rxvt-unicode-trucolor polybar
```

Fonts and more fonts
```bash
$ sudo pacman -S ttf-dejavu ttf-inconsolata
```

Clone dotfiles from github
```bash
cd ~
git clone https://github.com/diefx/dotfiles.git ~/.config
```
