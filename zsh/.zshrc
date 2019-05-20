# Path to your oh-my-zsh installation.
export ZSH=$HOME/.local/share/oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="amuse"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
alias startx="startx ~/.config/X11/.xinitrc"
alias ls="ls -CF --color=auto"
alias ll="ls -lisa --color=auto"
alias home="cd ~"
alias dotfiles="cd ~/.config"
alias tree="tree -CaL"
alias shutdown="sudo /sbin/shutdown now"
#--dotfiles 
alias zshrc="nvim ~/.config/zsh/.zshrc"
alias zshrst="source ~/.config/zsh/.zshrc"
alias nvimrc="nvim ~/.config/nvim/init.vim"
alias readmerc="nvim ~/.config/readme.md"
alias xresourcesrc="nvim ~/.config/X11/.Xresources"
alias xresourcesrst="xrdb ~/.config/X11/.Xresources"
alias bspwmrc="nvim ~/.config/bspwm/bspwmrc"
alias sxhkdrc="nvim ~/.config/bspwm/sxhkdrc"
alias xinitrc="nvim ~/.config/X11/.xinitrc"
alias rofirc="nvim ~/.config/rofi/config"
alias polybarrc="nvim ~/.config/polybar/config"
alias gitignore="nvim ~/.config/.gitignore"
#--git commads shorcutes
alias gits="git status"
alias gita="git add ."
alias gitc="git commit -m "
alias gitchk="git checkout"
alias gitl="git log --oneline"
alias gitp="git push -u origin master"

#--Enable autompletion
autoload -Uz compinit
compinit

