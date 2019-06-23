" Plugins
call plug#begin('~/.local/share/nvim/plugged')
    Plug 'rakr/vim-one'
    Plug 'vim-airline/vim-airline'
    Plug 'SirVer/ultisnips'
call plug#end()

" Basic configuration
set number          " show line numbers
set relativenumber  " show line numbers
syntax enable       " highlight syntax
set cursorline      " hightlight current line
set termguicolors   " enable true color
set background=dark " enable dark background
colorscheme one
let g:one_allow_italics=1

" format
set tabstop=4       " width of tab character
set softtabstop=4   " how many column the tab key insert
set expandtab       " expand tabs into spaces

" Shortcuting split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l


" airline
let g:airline_theme='one'
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

" Trigger snippets configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/UltiSnips']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<C-tab>"

