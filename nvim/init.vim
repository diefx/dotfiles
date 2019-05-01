" Plugins
call plug#begin('~/.local/share/nvim/plugged')
    Plug 'rakr/vim-one'
call plug#end()

"Basic configuration
set number          " show line numbers
syntax enable       " highlight syntax
set cursorline      " hightlight current line
set termguicolors   " enable true color
set background=dark " enable dark background
"leg g:one_allow_italics=1
colorscheme one

set tabstop=4       " width of tab character
set softtabstop=4   " how many column the tab key insert
set expandtab       " expand tabs into spaces

