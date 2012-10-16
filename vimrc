call pathogen#infect()

filetype plugin on
syntax enable		" Enable syntax
set hlsearch " Highlight searches
set background=light
let g:solarized_termcolors=256
colorscheme solarized	" Set colorscheme
set ls=2 " List filename at bottem of screen
set ruler " Show current line and column number, and percentage in buffer
set number " Show line numbers
set wildmode=list:longest " Autocomplete file open

set cursorline		" Highlight currentline
set cursorcolumn	" Highlight current column
"hi cursorline term=bold cterm=bold guibg=Grey40

" Change Tab to Spaces
set tabstop=3
set shiftwidth=3
set expandtab

let mapleader = "," " Change default leader key
let g:EasyMotion_leader_key = '<Leader>'
