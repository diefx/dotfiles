" Plugins
call plug#begin('~/.local/share/nvim/plugged')
    Plug 'rakr/vim-one'
    Plug 'vim-airline/vim-airline'
call plug#end()

"Basic configuration
set number          " show line numbers
syntax enable       " highlight syntax
set cursorline      " hightlight current line
set termguicolors   " enable true color
set background=dark " enable dark background
let g:one_allow_italics=1
let g:airline_theme='one'
colorscheme one

set tabstop=4       " width of tab character
set softtabstop=4   " how many column the tab key insert
set expandtab       " expand tabs into spaces

" airline
let g:airline_detect_paste=1 " Show PASTE if in paste mode
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
