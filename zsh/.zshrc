
#-- most useful alias commands
alias startx="startx ~/.config/X11/.xinitrc"
alias ls="ls -CF --color=auto"
alias ll="ls -lisa --color=auto"
alias home="cd ~"
alias dotfiles="cd ~/.config"
alias tree="tree -CaL"

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

#--git commads shorcutes
alias gits="git status"
alias gita="git add"
alias gitc="git commit"
alias gitchk="git checkout"
alias gitl="git log --oneline"


#--Enable autompletion
autoload -Uz compinit
compinit

