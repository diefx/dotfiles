
#-- most useful alias commands
alias ls="ls -CF --color=auto"
alias ll="ls -lisa --color=auto"
alias home="cd ~"

alias zshrc="nvim ~/.config/zsh/.zshrc"
alias zshrst="source ~/.config/zsh/.zshrc"
alias nvimrc="nvim ~/.config/nvim/init.vim"
alias readmerc="nvim ~/.config/readme.md"
alias xresourcesrc="nvim ~/.config/.Xresources"
alias xresourcesrst="xrdb ~/.config/.Xresources"
alias bspwmrc="nvim ~/.config/bspwm/bspwmrc"
alias sxhkdrc="nvim ~/.config/bspwm/sxhkdrc"
alias xinitrc="nvim ~/.config/.xinitrc"
alias rofirc="nvim ~/.config/rofi/config"

alias tree="tree -CaL"

#--Enable autompletion
autoload -Uz compinit
compinit

