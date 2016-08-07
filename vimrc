call pathogen#infect()
call pathogen#helptags()

filetype indent plugin on
syntax enable		" Enable syntax
set hlsearch " Highlight searches
set nocompatible

" Solarized Colorscheme
set background=light
let g:solarized_termcolors=256
let g:solarized_contrast="normal"    "default value is normal
colorscheme solarized	" Set colorscheme

set ls=2 " List filename at bottom of screen
set ruler " Show current line and column number, and percentage in buffer
set number " Show line numbers
set wildmode=list:longest " Autocomplete file open
set diffopt+=iwhite " Remove whitespace from vimdiff

set cursorline		" Highlight currentline
"set cursorcolumn	" Highlight current column
"hi cursorline term=bold cterm=bold guibg=Grey40

" Change Tab to Spaces
set tabstop=4
set shiftwidth=4
set expandtab

let mapleader = "," " Change default leader key
"let g:EasyMotion_leader_key = '<Leader>'
map <Leader>e :NERDTreeToggle<CR> " Shortcut for NERDTreeToggle

" Fugitive settings
"  Display current branch
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
