Rising the system
-----------------

Fresh intallation of arch linux anarchy with the following packages:

```bash
base alsa-utils base-devel bspwm cpupower dialog grub gvfs 
gvfs-mtp gvfs-smb linux-headers networkmanager 
network-manager-applet pavucontrol pulseaudio pulseaudio-alsa 
screenfetch sxhkd ttf-dejavu unzip vim 
virtualbox-guest-modules-arch virtualbox-guest-utils wget 
xdg-users-dirs xorg-apps xorg-server xorg-xinit xterm yay zsh  
zsh-syntax-highlighting
```

Then we sould proceede to install some useful binaries and also
make some tweeks that allows to keep in a good shape our configuration files and a very
clean home folder

Installation of several packages
--------------------------------
Install editor, versioning coding, etc..
```bash
$ sudo pacman -S neovim pyhton-neovim tree git rofi feh awesome-terminal-fonts zathura zathura-pdf-poppler firefox 
```

Instal two important components, polybar and our terminal with unicode and true color support
```bash
$yay -S st-luke-git polybar
```

Configuration
-------------
Set our shell to look into the right directory for its configuration files
```bash
$ sudo touch /etc/zsh/zshenv
$ sudo nvim /etc/zsh/zshenv
# write the following line and save file
ZDOTDIR=~/.config/zsh 
```

Cleaning up the system
-----------------------
Remove some unnecesary packages to keep our system as clean as possible
```bash
$ sudo pacman -R vi vim nano xterm
$ rm .bash* .xinitrc .zshrc
$ rm -r .config
```

Fonts and dotfiles
---------------------
Install __Powerline fonts__
```bash
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
sudo cp ~/.local/share/fonts/*.ttf /usr/share/fonts/TTF/
sudo rm -r ~/.local/share/fonts
```

Clone dotfiles from github
```bash
$ cd ~
$ git clone https://github.com/diefx/dotfiles.git ~/.config
```

oh-my zsh
```bash
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.local/share/oh-my-zsh
```

Neovim Plug manager
```bash
$ curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
mkdir ~/.local/shared/nvim/plugged
# inside vim run
:PlugInstall
```

Embeeded tools
-------------
Becuase i'm and embedded enginner and old habits never dies
```bash
arm-none-eabi-gcc arm-none-eabi-newlib openocd
```

Blogging Pplatform
-------------------
let's share some expertise with the simple people, becasue i'm generous =). kekyll my official github page
```bash
sudo pacman -S ruby
gem install jekyll bundler minima
```

